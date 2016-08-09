class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def subtotal
    # Ruby version of summing
    # line_items.to_a.sum { |item| item.total }
    #
    # SQL version of summing which is much faster than Ruby
    line_items.select("SUM(quantity * price) AS sum")[0].sum
  end

end
