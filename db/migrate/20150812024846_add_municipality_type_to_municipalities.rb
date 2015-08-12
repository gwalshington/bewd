class AddMunicipalityTypeToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :municipality_type, :string
  end
end
