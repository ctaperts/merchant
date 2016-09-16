class Route < ApplicationRecord
  belongs_to :order
  belongs_to :truck

  validates_presence_of :order_id, :truck_id
end
