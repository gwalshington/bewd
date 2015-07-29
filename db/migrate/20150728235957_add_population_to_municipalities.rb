class AddPopulationToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :population, :integer
  end
end
