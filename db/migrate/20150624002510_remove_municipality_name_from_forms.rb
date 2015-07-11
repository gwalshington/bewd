class RemoveMunicipalityNameFromForms < ActiveRecord::Migration
  def change
    remove_column :forms, :municipality_name, :string
  end
end
