class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart


  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)

    respond_to do |format|
      if @line_item.save
	format.html { redirect_to :back }
	format.js {}
	format.json { render :back, status: :created, location: @line_item }
	#flash[:notice] = "#{product.name} was successfully added to your cart"
	redirect_to shop_path
      else
	format.html { render :new }
	format.js { render :new }
	format.json { render json: @user_task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @line_item = LineItem.find(params[:id])
    if @line_item.present?
      @line_item.destroy
    end
    redirect_to :back
  end
  def update
    respond_to do |format|
      if @line_item = LineItem.find(params[:id])
	@line_item.update(product_params)
	format.html { redirect_to :back }
	format.js {}
	format.json { render :show, status: :ok, location: @line_item }
      else
	format.html { render :edit }
	format.js { render :back }
	format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def product_params
    params.require(:line_item).permit(:quantity, :cart_id, :order_id)
  end



end
