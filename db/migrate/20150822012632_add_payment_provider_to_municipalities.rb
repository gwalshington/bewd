class AddPaymentProviderToMunicipalities < ActiveRecord::Migration
  def change
    add_column :municipalities, :payment_provider, :string
  end
end
