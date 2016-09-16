class TruckHistory < ApplicationRecord
  belongs_to :truck
  has_attached_file :document, styles: {thumbnail: "60x60#"}
  validates_attachment :document, content_type: { content_type: "application/pdf" }
  validates_presence_of :maintenance_date, :maintenance_info, :truck_id
  validates :maintenance_passing, inclusion: {in: [true, false]}
end
