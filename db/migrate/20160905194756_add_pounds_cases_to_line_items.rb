class AddPoundsCasesToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :case, :decimal
    add_column :line_items, :price_per_case, :decimal
    add_column :line_items, :pounds, :decimal
    add_column :line_items, :price_per_pound, :decimal
  end
end
