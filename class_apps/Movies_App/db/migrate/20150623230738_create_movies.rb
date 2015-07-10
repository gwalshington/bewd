class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.references :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
