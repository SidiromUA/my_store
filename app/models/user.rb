# frozen_string_literal: true

class User < ApplicationRecord
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_one :cart, autosave: true, dependent: :destroy
  has_many :orders
  has_many :comments
end
