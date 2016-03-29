class UsersController < ApplicationController
  
  def dashboard
    current_user
  end
  
  def new
    
  end
  
  def create
    user = User.new(allowed_user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to signup_path
    end
  end
  
  private
  
  def allowed_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_comfirmation, :gender)
  end
end
