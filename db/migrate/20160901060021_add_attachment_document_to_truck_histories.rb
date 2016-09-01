class AddAttachmentDocumentToTruckHistories < ActiveRecord::Migration
  def self.up
    change_table :truck_histories do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :truck_histories, :document
  end
end
