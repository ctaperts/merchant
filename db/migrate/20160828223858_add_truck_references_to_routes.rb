class AddTruckReferencesToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_reference :routes, :truck, foreign_key: true
  end
end
