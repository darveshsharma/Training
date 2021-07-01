class CreateDependents < ActiveRecord::Migration[6.1]
  def change
    create_table :dependents do |t|
      t.belongs_to :employee, :unique => true 
      t.string :Name
      t.bigint :Contact_Number
      t.timestamps
    end
  end
end
