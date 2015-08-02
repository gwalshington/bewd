class AddStateToMunicipalities < ActiveRecord::Migration
  def change
    add_reference :municipalities, :state, index: true, foreign_key: true
  end
end
