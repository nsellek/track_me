class UsersController < ApplicationController
  
  def dashboard
    current_user
  end
  
  def new
    
  end
  
  def create
    binding.pry
    User.convert_born_on_to_date(params)
    user = User.new(allowed_user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      binding.pry
      redirect_to signup_path
    end
  end
  
  private
  
  def allowed_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :gender, :born_on)
  end
end
