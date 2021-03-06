class Cart < ApplicationRecord
  include Subtotal
  has_many :line_items, dependent: :destroy



  def add_product(product_id)
    product = Product.find(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product: product, price: product.price)
    end
    return current_item
  end

end
