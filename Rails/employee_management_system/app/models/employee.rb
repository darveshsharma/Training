class Employee < ApplicationRecord
    belongs_to :department
    has_one :nominee
    accepts_nested_attributes_for :nominee, update_only: true
    has_many :project_assignments
    has_many :projects, through: :project_assignments
    has_many :comments, as: :feedback
    validates :name, presence: {message: "please enter"}
    validates :gender, inclusion: {in: %w(M F m f other Other) , message: "%{value} can be M/F/Other!!"}
    # validates :email , presence: true , uniqueness: {message: 'already in use'} , format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
