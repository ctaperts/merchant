module LoadingsHelper
  def quality_check
    @item = LineItem.find(params[:id])
    if @item.quality_check == true
      @item.update_columns({quality_check: false, quality_check_by: nil, quality_check_on: nil})
      @item.save
      redirect_to(:back)
    else
      @item.update_columns({quality_check: true, quality_check_by: current_user.email, quality_check_on: Time.now})
      @item.save
      redirect_to(:back)
    end
  end
  def load_check
    @item = LineItem.find(params[:id])
    if @item.check == true
      @item.update_columns({check: false, check_by: nil, check_on: nil})
      @item.save
      redirect_to(:back)
    else
      @item.update_columns({check: true, check_by: current_user.email, check_on: Time.now})
      @item.save
      redirect_to(:back)
    end
  end
end
