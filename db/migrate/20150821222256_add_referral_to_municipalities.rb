class AddReferralToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :referral, :string
    add_column :municipalities, :referral_url, :string
  end
end
