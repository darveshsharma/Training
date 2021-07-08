class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :Project_Name
      t.string :Status
      t.date   :Deploying_Date
      t.timestamps
    end
  end
end
