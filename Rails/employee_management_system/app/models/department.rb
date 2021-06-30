class Department < ApplicationRecord
    has_many :employees
    validates! :Department_Name, uniqueness: { case_sensitive: false }
end
