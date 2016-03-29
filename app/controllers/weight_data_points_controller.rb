class WeightDataPointsController < ApplicationController
  include Conversion
  before_action :convert_pounds_to_grams, only: :create 
  def index
    @weight_points = WeightDataPoint.where(:user_id => current_user.id)
  end
  
  def new
    @weight_point = WeightDataPoint.new
  end
  
  def create
    @weight_point = WeightDataPoint.new(allowed_params)
    
    if @weight_point.save
      @weight_point.update(:user_id => current_user.id)
      redirect_to dashboard_path
    else
      redirect_to weight_point_path
    end
  end
  
  private
  def allowed_params
    params.require(:weight_data_point).permit(:weight)
  end
  
  def convert_pounds_to_grams
    params[:weight_data_point][:weight] = to_grams(params[:weight_data_point][:weight].to_f)
  end
end
