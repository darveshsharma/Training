class Employee < ApplicationRecord
    belongs_to :department
    has_one :nominee
    has_many :project_assignments
    has_many :projects, through: :project_assignments
    has_many :comments, as: :feedback
    validates! :name, presence: {message: "please enter"}
    validates! :gender, inclusion: {in: %w(M F m f other Other) , message: "%{value} can be M/F/Other!!"}
end
