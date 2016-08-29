class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.integer :number
      t.string :description

      t.timestamps
    end
  end
end
