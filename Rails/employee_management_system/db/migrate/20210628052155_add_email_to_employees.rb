class AddEmailToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :email, :string
    add_index :employees, :email
  end
end
