class RemoveTypeFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :type, :string
  end
end
