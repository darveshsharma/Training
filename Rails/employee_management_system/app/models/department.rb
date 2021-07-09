class Department < ApplicationRecord
    has_many :employees
    validates! :name, uniqueness: { case_sensitive: false }
end
