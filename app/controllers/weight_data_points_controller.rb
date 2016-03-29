class WeightDataPointsController < ApplicationController
  
  def new
    
  end
  
  def create
    weight_point = WeightDataPoint.new(allowed_params)
    
    if weight_point.save
      weight_point.update(:user_id => current_user.id)
      redirect_to dashboard_path
    else
      redirect_to weight_point_path
    end
  end
  
  private
  def allowed_params
    params.require(:weight_data_point).permit(:weight)
  end
end
