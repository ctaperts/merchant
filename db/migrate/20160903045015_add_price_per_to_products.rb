class AddPricePerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :pounds, :decimal
    add_column :products, :price_per_pound, :decimal
    add_column :products, :case, :decimal
    add_column :products, :price_per_case, :decimal
  end
end
