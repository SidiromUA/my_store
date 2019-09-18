# frozen_string_literal: true

class Position < ApplicationRecord
  belongs_to :item
  belongs_to :cart
end
