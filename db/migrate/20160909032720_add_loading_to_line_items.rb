class AddLoadingToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :check, :boolean, default: false
    add_column :line_items, :check_on, :datetime
    add_column :line_items, :check_by, :string
    add_column :line_items, :quality_check, :boolean, default: false
    add_column :line_items, :quality_check_on, :datetime
    add_column :line_items, :quality_check_by, :string
  end
end
