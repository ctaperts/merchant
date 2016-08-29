class AddTruckLoadedToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :truck_loaded, :boolean, default: false
  end
end
