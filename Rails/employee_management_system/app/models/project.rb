class Project < ApplicationRecord
    has_many :project_assignments
    has_many :employees, through: :project_assignments
    has_many :comments, as: :feedback
    validates! :Status, inclusion: {in: %w(Pending Deployed) , message: "%{value} can be Pending either Deployed!!"}
end
