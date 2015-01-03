# == Schema Information
#
# Table name: actors
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_id    :string
#

class Actor < ActiveRecord::Base
  has_many :comments, as: :commentable
  attachment :image
end
