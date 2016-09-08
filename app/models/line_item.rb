class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  belongs_to :loading

  def total_price
    price * quantity
  end

end
