class LoadingsController < ApplicationController
  include LoadingsHelper
  def index
    @route_order_ids = Route.all.where(truck_loaded: false).pluck(:order_id)
  end
  def show_all
    @order = Order.all.reverse_order
  end
  def show_by_order
    @route_order_ids = Route.all.where(truck_loaded: false).pluck(:order_id)
  end
  def show_by_location
    route_order_ids = Route.all.where(truck_loaded: false).pluck(:order_id)
    @line_item_by_location = LineItem.where(order_id: route_order_ids).sort_by{|item| [item.product.location.name, item.product.name, item.order_id] }
  end
end
