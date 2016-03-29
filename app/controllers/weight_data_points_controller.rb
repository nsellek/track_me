class WeightDataPointsController < ApplicationController
  
  def new
    
  end
  
  def create
    weight_point = WeightDataPoint.new(allowed_params)
  end
  
  private
  def allowed_params
    params.require(:weight_data_point).permit(:user_id, :weight)
  end
end
