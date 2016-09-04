module ProductsHelper

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
