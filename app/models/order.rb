class Order < ApplicationRecord
  include Subtotal
  belongs_to :user
  has_many :line_items, dependent: :destroy


  PAYMENT_TYPES = ['Credit Card', 'Check', 'COD', 'Cash', 'PayPal']
  validates :name, :address, :pay_type, :user_id, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil 
      line_items << item
    end
  end
end
