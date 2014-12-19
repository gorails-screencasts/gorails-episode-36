class CreateActorFilms < ActiveRecord::Migration
  def change
    create_table :actor_films do |t|
      t.integer :actor_id
      t.integer :film_id

      t.timestamps null: false
    end
  end
end
