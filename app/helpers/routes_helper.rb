module RoutesHelper
  def not_delivered
    @route = Route.find(params[:id])
    @route.update_attributes(delivered: false)
    @route.update_attributes(delivered_on: nil)
    redirect_to routes_path
  end

  def delivered
    @route = Route.find(params[:id])
    @route.update_attributes(delivered: true)
    @route.update_attributes(delivered_on: Time.now)
    redirect_to routes_path
  end

  def not_loaded
    @route = Route.find(params[:id])
    @route.update_attributes(truck_loaded: false)
    @route.update_attributes(truck_loaded_on: nil)
    redirect_to routes_path
  end

  def loaded
    @route = Route.find(params[:id])
    @route.update_attributes(truck_loaded: true)
    @route.update_attributes(truck_loaded_on: Time.now)
    redirect_to routes_path
  end
end
