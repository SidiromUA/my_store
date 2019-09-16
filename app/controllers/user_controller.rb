class UserController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.save
  end

  private 

  def user_params
    params.require(:resource).permit(:login, :email, :password, :password_confirmation, :remember_me)
  end
end
