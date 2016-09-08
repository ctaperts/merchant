class LoadingsController < ApplicationController
  before_action :set_loading, only: [:show, :edit, :update, :destroy]

  # GET /loadings
  # GET /loadings.json
  def index
    @loadings = Loading.all
  end

  # GET /loadings/1
  # GET /loadings/1.json
  def show
  end

  # GET /loadings/new
  def new
    @loading = Loading.new
  end

  # GET /loadings/1/edit
  def edit
  end

  # POST /loadings
  # POST /loadings.json
  def create
    @loading = Loading.new(loading_params)

    respond_to do |format|
      if @loading.save
        format.html { redirect_to @loading, notice: 'Loading was successfully created.' }
        format.json { render :show, status: :created, location: @loading }
      else
        format.html { render :new }
        format.json { render json: @loading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loadings/1
  # PATCH/PUT /loadings/1.json
  def update
    respond_to do |format|
      if @loading.update(loading_params)
        format.html { redirect_to @loading, notice: 'Loading was successfully updated.' }
        format.json { render :show, status: :ok, location: @loading }
      else
        format.html { render :edit }
        format.json { render json: @loading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loadings/1
  # DELETE /loadings/1.json
  def destroy
    @loading.destroy
    respond_to do |format|
      format.html { redirect_to loadings_url, notice: 'Loading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loading
      @loading = Loading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loading_params
      params.require(:loading).permit(:check, :quality_check, :check_by, :quality_check_by, :check_on, :check_quality_on, :line_item_id)
    end
end
