class AddRouteDeliveredToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :route_delivered, :boolean, default: false
  end
end
