class AddGenreToResources < ActiveRecord::Migration
  def change
    add_column :resources, :genre, :string
  end
end
