class AddIndexToBrands < ActiveRecord::Migration[5.0]
  def change
    #add_column :brands, :name, :string
    add_index :brands, :name, unique: true
  end
end
