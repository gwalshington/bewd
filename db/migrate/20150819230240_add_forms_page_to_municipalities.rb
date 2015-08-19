class AddFormsPageToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :forms_page, :string
  end
end
