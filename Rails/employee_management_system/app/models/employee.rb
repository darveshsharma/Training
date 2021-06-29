class Employee < ApplicationRecord
    belongs_to :department
    has_many :project_assignments
    has_many :projects, through: :project_assignments
end
