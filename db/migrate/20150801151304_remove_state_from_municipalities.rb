class RemoveStateFromMunicipalities < ActiveRecord::Migration
  def change
    remove_column :municipalities, :state, :string
  end
end
