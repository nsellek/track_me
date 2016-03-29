class WeightDataPointsController < ApplicationController
  
  def new
    
  end
  
  def create
    
  end
  
  private
  def allows_params
    params.require(:weight_data_point).permit(:user_id, :weight)
  end
end
