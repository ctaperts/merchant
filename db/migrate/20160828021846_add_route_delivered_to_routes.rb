class AddRouteDeliveredToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :delivered, :boolean, default: false
  end
end
