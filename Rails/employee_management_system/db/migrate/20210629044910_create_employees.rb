class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :Name
      t.string :Last_Name
      t.string :Gender , :limit => 1
      t.date   :DOB
      t.date   :DOJ
      t.timestamps
    end
  end
end
