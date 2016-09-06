class AddReferenceToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :location, foreign_key: true
  end
end
