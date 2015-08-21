class AddHasPaymentToForms < ActiveRecord::Migration
  def change
    add_column :forms, :has_payment, :boolean
  end
end
