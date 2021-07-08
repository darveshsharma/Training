class Comment < ApplicationRecord
    belongs_to :feedback, polymorphic: true
    validates :content, length: {minimum: 5, maximum: 100 }
end
