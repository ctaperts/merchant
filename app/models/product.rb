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
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
end
