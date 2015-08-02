class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resource
      t.string :type
      t.string :url
      t.references :state, index: true, foreign_key: true
      t.references :municipality, index: true, foreign_key: true
      t.references :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
