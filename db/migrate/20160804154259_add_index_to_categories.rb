class AddIndexToCategories < ActiveRecord::Migration[5.0]
  def change
    #add_column :categories, :name, :string
    add_index :categories, :name, unique: true
  end
end
