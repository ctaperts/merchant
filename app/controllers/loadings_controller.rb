class LoadingsController < ApplicationController
  include LoadingsHelper
  def index
    @order = Order.all.reverse_order
  end
end
