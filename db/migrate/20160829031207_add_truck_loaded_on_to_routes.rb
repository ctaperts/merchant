class AddTruckLoadedOnToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :truck_loaded_on, :datetime
  end
end
