class RemoveTruckAndDescriptionFromRoutes < ActiveRecord::Migration[5.0]
  def change
    remove_column :routes, :truck, :string
    remove_column :routes, :description, :string
  end
end
