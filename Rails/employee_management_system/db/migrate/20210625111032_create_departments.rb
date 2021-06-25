class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :Name
      t.integer :Dept_id
      t.string :Depat_name
      t.timestamps
    end
  end
end
