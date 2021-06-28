class AddDepartmentIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :department, :bigint
  end
end
