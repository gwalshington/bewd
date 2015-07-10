class AddMunicipalityToForms < ActiveRecord::Migration
  def change
    add_reference :forms, :municipality, index: true, foreign_key: true
  end
end
