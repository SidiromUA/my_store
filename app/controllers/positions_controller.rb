# frozen_string_literal: true

class PositionsController < ApplicationController
  private

  def positions_params
    params.require(:resource).permit(:item_id, :cart_id, :quantity)
  end
end
