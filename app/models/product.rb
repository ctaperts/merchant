class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_attached_file :avatar,
  styles: {
  medium: "300x300#",
  thumb: "100x100" },
  default_url: "missing_:style.jpg"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment_size :avatar, less_than: 3.megabytes, unless: Proc.new { |m| m[:avatar_file_name].blank?}

  validates_presence_of :name, :brand, :category 
  validates_numericality_of :price, greater_than_or_equal_to: 0
  validates_numericality_of :quantity, greater_than_or_equal_to: 0

  def self.search_by_name_or_description(string)
    where("name LIKE ? OR description LIKE ?", "%#{string}%", "%#{string}%" )
  end

  private 

  #ensure no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'lines items present')
      return false
    end
  end

end
