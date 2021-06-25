class RemoveEmployeeIdFromEmployees < ActiveRecord::Migration[6.1]
  def change
    remove_column :employees, :Employee_id, :int
  end
end
