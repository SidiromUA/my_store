# frozen_string_literal: true

class OrdersController < ApplicationController

  def create
    @order = current_user.orders.new
    render status: 422 unless @order.save
  end

  private

  def order_params
    params.require(:order).permit(:user_id)
  end
end
