# == Schema Information
#
# Table name: actor_films
#
#  id         :integer          not null, primary key
#  actor_id   :integer
#  film_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ActorFilm < ActiveRecord::Base
end
