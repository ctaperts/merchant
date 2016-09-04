class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy] # @route = Route.find(params[:id])
  before_action :route_all, only: [:index, :history] # @routes = Route.all

  # GET /routes
  # GET /routes.json
  def index
  end

  def history
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
  end

  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to @route, notice: 'Route was successfully created.' }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: 'Route was successfully updated.' }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: 'Route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def not_delivered
    @route = Route.find(params[:id])
    @route.update_attributes(delivered: false)
    @route.update_attributes(delivered_on: nil)
    redirect_to routes_path
  end

  def delivered
    @route = Route.find(params[:id])
    @route.update_attributes(delivered: true)
    @route.update_attributes(delivered_on: Time.now)
    redirect_to routes_path
  end

  def not_loaded
    @route = Route.find(params[:id])
    @route.update_attributes(truck_loaded: false)
    @route.update_attributes(truck_loaded_on: nil)
    redirect_to routes_path
  end

  def loaded
    @route = Route.find(params[:id])
    @route.update_attributes(truck_loaded: true)
    @route.update_attributes(truck_loaded_on: Time.now)
    redirect_to routes_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    def route_all
      @routes = Route.all
    end

    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.require(:route).permit(:order_id, :truck_id)
    end
end
