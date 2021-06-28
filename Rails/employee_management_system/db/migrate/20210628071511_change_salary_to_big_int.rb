class ChangeSalaryToBigInt < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :salary, :bigint
  end
end
