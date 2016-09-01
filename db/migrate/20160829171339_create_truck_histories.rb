class CreateTruckHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_histories do |t|
      t.datetime :maintenance_date
      t.string :maintenance_info
      t.boolean :maintenance_passing
      t.references :truck, foreign_key: true

      t.timestamps
    end
  end
end
