class RemoveFormDepartmentFromForms < ActiveRecord::Migration
  def change
    remove_column :forms, :form_department, :string
  end
end
