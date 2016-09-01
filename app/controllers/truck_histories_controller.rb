class TruckHistoriesController < ApplicationController
  before_action :set_truck_history, only: [:show, :edit, :update, :destroy]

  # GET /truck_histories
  # GET /truck_histories.json
  def index
    @truck_histories = TruckHistory.all
  end

  # GET /truck_histories/1
  # GET /truck_histories/1.json
  def show
  end

  # GET /truck_histories/new
  def new
    @truck_history = TruckHistory.new
  end

  # GET /truck_histories/1/edit
  def edit
  end

  # POST /truck_histories
  # POST /truck_histories.json
  def create
    @truck_history = TruckHistory.new(truck_history_params)

    respond_to do |format|
      if @truck_history.save
        format.html { redirect_to @truck_history, notice: 'Truck history was successfully created.' }
        format.json { render :show, status: :created, location: @truck_history }
      else
        format.html { render :new }
        format.json { render json: @truck_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_histories/1
  # PATCH/PUT /truck_histories/1.json
  def update
    respond_to do |format|
      if @truck_history.update(truck_history_params)
        format.html { redirect_to @truck_history, notice: 'Truck history was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck_history }
      else
        format.html { render :edit }
        format.json { render json: @truck_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_histories/1
  # DELETE /truck_histories/1.json
  def destroy
    @truck_history.destroy
    respond_to do |format|
      format.html { redirect_to truck_histories_url, notice: 'Truck history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_history
      @truck_history = TruckHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_history_params
      params.require(:truck_history).permit(:maintenance_date, :maintenance_info, :document, :maintenance_passing, :truck_id)
    end
end
