class CreateMuseums < ActiveRecord::Migration
  def change
    create_table :museums do |t|
      t.string :name
      t.string :city

      t.timestamps null: false
    end
  end
end
