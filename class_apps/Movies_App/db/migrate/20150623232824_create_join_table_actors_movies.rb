class CreateJoinTableActorsMovies < ActiveRecord::Migration
  def change
    create_join_table :actors, :movies do |t|
      t.index [:actor_id, :movie_id]
      t.index [:movie_id, :actor_id]
    end
  end
end
