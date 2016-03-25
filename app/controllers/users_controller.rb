class UsersController < ApplicationController
  
  def new
    
  end
  
  def create
    
  end
  
  private
  
  def allowed_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_comfirmation, :gender)
  end
end
