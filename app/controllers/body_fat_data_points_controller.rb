class BodyFatDataPointsController < ApplicationController
  
  def index
    @fat_data_points = BodyFatDataPoint.all
  end
  
  def new
    @fat_data_point = BodyFatDataPoint.new
  end
  
  def create
    binding.pry
    @fat_data_point = BodyFatDataPoint.new(allowed_params)
    
    if @fat_data_point.save
      @fat_data_point.update(user_id: current_user.id)
      redirect_to dashboard_path
    else
      redirect_to fat_point_path
    end
  end
  
  private
  
  def allowed_params
    params.require(:body_fat_data_point).permit(:upper_measurement, :mid_measurement, :lower_measurement)
  end
end
