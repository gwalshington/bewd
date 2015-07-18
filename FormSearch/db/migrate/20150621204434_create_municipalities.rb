class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :name
      t.integer :form_id
      t.string :state

      t.timestamps null: false
    end
  end
end
