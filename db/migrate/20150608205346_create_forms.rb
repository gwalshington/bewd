class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :form_name
      t.string :form_link
      t.string :municipality_name
      t.string :municipality_state
      t.string :form_department

      t.timestamps null: false
    end
  end
end
