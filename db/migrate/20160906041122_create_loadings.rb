class CreateLoadings < ActiveRecord::Migration[5.0]
  def change
    create_table :loadings do |t|
      t.boolean :check
      t.boolean :quality_check
      t.string :check_by
      t.string :quality_check_by
      t.datetime :check_on
      t.datetime :check_quality_on
      t.references :line_items, foreign_key: true

      t.timestamps
    end
  end
end
