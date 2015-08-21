class AddCityCountyToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :city_county, :string
  end
end
