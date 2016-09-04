module ProductsHelper

  # per item is 1, 3, 5, 7
  def per_item
    @product = Product.find(params[:id])
    @product.item_amount_type += 1
    @product.save
    render :edit
  end
  def per_item_remove
    @product = Product.find(params[:id])
    @product.item_amount_type -= 1
    @product.save
    render :edit
  end

  # per pound is 2, 3, 6, 7
  def per_pound
    @product = Product.find(params[:id])
    @product.item_amount_type += 2
    @product.save
    render :edit
  end
  def per_pound_remove
    @product = Product.find(params[:id])
    @product.item_amount_type -= 2
    @product.save
    render :edit
  end

  #per case is 4, 5, 6, 7
  def per_case
    @product = Product.find(params[:id])
    @product.item_amount_type += 4
    @product.save
    render :edit
  end
  def per_case_remove
    @product = Product.find(params[:id])
    @product.item_amount_type -= 4
    @product.save
    render :edit
  end

end
