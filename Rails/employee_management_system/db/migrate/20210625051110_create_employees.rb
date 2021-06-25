class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :Name
      t.string :Last_Name
      t.integer :Employee_id
      t.timestamps
    end
  end
end
