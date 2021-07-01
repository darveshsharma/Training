class AddAgeToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :Age, :int
  end
end
