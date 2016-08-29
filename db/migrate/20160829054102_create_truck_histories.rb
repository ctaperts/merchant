class CreateTruckHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_histories do |t|
      t.string :maintenance_info
      t.string :maintenance_file
      t.integer :maintenance_file_size
      t.references :truck, foreign_key: true

      t.timestamps
    end
  end
end
