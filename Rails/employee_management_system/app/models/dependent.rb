class Dependent < ApplicationRecord
    belongs_to :employee
    validates :contact_number, length: {is: 10 }
end
