class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.integer :year
      t.string :style
      t.string :image
      t.references :artist, index: true, foreign_key: true
      t.references :museum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
