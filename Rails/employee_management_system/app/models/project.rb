class Project < ApplicationRecord
    has_many :project_assignments
    has_many :employees, through: :project_assignments
    has_many :comments, as: :feedback
end
