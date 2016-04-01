class BodyFatDataPointsController < ApplicationController
  
  def new
    @fat_data_point = BodyFatDataPoint.new
  end
  
  def create
    
  end
  
  private
  
  def allowed_params
    params.require(:body_fat_data_point).permit(:upper_measurement, :mid_measurement, :lower_measurement)
  end
end
