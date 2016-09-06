class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  has_many :loadings

  def total_price
    price * quantity
  end

end
