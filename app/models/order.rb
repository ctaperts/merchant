class Order < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy


  PAYMENT_TYPES = ['Credit Card', 'Check', 'COD', 'Cash', 'PayPal']
  validates :name, :address, :pay_type, :user_id, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

end
