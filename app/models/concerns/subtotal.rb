module Subtotal
  extend ActiveSupport::Concern


  def subtotal
    line_items.select("SUM(quantity * price) AS sum")[0].sum
  end

end

