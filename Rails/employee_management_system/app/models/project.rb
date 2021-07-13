class Project < ApplicationRecord
    has_many :project_assignments
    has_many :employees, through: :project_assignments
    has_many :comments, as: :feedback
    validates :status, inclusion: {in: %w(Pending Deployed) , message: "%{value} can be Pending either Deployed!!"}
    validates :deploying_date, presence: {message: "please enter"}
end
