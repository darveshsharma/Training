class Department < ApplicationRecord
    has_many :employees
    validates! :department_name, uniqueness: { case_sensitive: false }
end
