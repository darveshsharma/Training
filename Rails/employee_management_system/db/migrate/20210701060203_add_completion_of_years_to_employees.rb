class AddCompletionOfYearsToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :Total_Years, :int
  end
end
