class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_attached_file :avatar,
  styles: {
  medium: "300x300#",
  thumb: "50x50" },
  default_url: "missing.jpg"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment_size :avatar, less_than: 3.megabytes, unless: Proc.new { |m| m[:avatar_file_name].blank?}

  validates_presence_of :name, :price, :quantity, :description, :brand, :category 
  validates_numericality_of :price, greater_than_or_equal_to: 0.01
  validates_numericality_of :quantity, greater_than_or_equal_to: 0

end
