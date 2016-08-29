class Truck < ApplicationRecord
  has_many :routes
  validates_presence_of :number, :description
end
