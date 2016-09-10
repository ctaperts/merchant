class LoadingsController < ApplicationController
  include LoadingsHelper
  def index
    @order = Order.all.reverse_order
    @route_order_ids = Route.all.where(truck_loaded: false).pluck(:order_id)
  end
  def show_all
    @order = Order.all.reverse_order
  end
  def show_by_order
    @order = Order.all.reverse_order
    @route_order_ids = Route.all.where(truck_loaded: false).pluck(:order_id)
  end
end
