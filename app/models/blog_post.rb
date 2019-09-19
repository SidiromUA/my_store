class BlogPost < ApplicationRecord
  has_many :comment, as: :commentable
end
