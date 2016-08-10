class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def subtotal
    # Ruby version of summing
    # line_items.to_a.sum { |item| item.total }
    #
    # SQL version of summing which is much faster than Ruby
    line_items.select("SUM(quantity * price) AS sum")[0].sum
  end

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
