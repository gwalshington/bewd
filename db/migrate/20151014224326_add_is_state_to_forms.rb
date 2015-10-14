class AddIsStateToForms < ActiveRecord::Migration
  def change
    add_column :forms, :is_state, :boolean
  end
end
