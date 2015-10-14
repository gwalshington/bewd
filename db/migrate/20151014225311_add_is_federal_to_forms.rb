class AddIsFederalToForms < ActiveRecord::Migration
  def change
    add_column :forms, :is_federal, :boolean
  end
end
