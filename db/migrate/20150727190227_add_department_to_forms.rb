class AddDepartmentToForms < ActiveRecord::Migration
  def change
    add_reference :forms, :department, index: true, foreign_key: true
  end
end
