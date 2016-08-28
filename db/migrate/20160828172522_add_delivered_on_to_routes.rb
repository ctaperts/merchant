class AddDeliveredOnToRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :delivered_on, :datetime
  end
end
