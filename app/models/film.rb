class Film < ActiveRecord::Base
  has_many :comments, as: :commentable
end
