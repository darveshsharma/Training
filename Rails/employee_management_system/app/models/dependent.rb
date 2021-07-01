class Dependent < ApplicationRecord
    belongs_to :employee
    validates :Contact_Number, length: {is: 10 }
end
