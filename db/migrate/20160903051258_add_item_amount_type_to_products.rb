class AddItemAmountTypeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :item_amount_type, :integer, default: 0
  end
end
