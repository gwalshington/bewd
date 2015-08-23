class AddWebsiteProviderToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :website_provider, :string
  end
end
