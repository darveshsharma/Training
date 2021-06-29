class CreateProjectAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :project_assignments do |t|
      t.belongs_to :employee
      t.belongs_to :project
      t.timestamps
    end
  end
end
