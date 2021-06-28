class RenameDepartmentToDepartmentId < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :department, :department_id
    change_column :employees, :department_id, :bigint
    add_foreign_key :employees, :departments
  end
end
