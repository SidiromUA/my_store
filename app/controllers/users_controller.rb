# frozen_string_literal: true

class UsersController < ApplicationController
  private

  def user_params
    params.require(:resource).permit(:login, :email, :password, :password_confirmation, :remember_me)
  end
end
