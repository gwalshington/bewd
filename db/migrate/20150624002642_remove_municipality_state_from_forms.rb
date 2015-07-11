class RemoveMunicipalityStateFromForms < ActiveRecord::Migration
  def change
    remove_column :forms, :municipality_state, :string
  end
end
