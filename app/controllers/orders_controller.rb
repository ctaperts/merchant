class OrdersController < ApplicationController
  before_action :authenticate_user!
  include CurrentCart
  before_action :set_cart

  def create
  end


  def new
    if @cart.line_items.empty?
      redirect_to shop_url, notice: "Your cart is empty"
      return
    end

    @order = Order.new
    @order.user_id = current_user.id

  end

  def show
  end
end
