class Admin::ProductsController < ApplicationController
  include ProductsHelper
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /products
  # GET /products.json
  def index
    if params[:search]
      @products = Product.search_by_name_or_description(params[:search])
      if @products.empty?
	flash[:notice] = "No results found for \"#{params[:search]}\", showing all products instead"
	@products = Product.paginate(page: params[:page], per_page: 3)
      end

    elsif params[:cat_id]
      @category = Category.find(params[:cat_id])
      @products = Product.where(category_id: params[:cat_id])
    else
    @products = Product.paginate(page: params[:page], per_page: 3)
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    # When creating a new item if price or quantity exists change item_amount_type 
    @product = Product.new(product_params)
     if @product.quantity != nil || @product.price != nil
       @product.item_amount_type +=1
     end
     if @product.pounds != nil || @product.price_per_pound != nil
       @product.item_amount_type +=2
     end
     if @product.case != nil || @product.price_per_case != nil
       @product.item_amount_type +=4
     end

    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_product_url(@product), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to admin_product_url(@product), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :quantity, :description, :category_id, :brand_id, :avatar, :item_amount_type, :location_id, :case, :price_per_case, :pounds, :price_per_pound)
    end
end
