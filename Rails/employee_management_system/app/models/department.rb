class Department < ApplicationRecord
    has_many :employees, :dependent => :destroy  
    validates! :name, uniqueness: { case_sensitive: false }
end
