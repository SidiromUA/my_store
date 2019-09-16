class OrderController < ApplicationController

  private 

  def order_params
    params.require(:resource).permit(:user, :user_id)
  end

end
