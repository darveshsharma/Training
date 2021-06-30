class Comment < ApplicationRecord
    belongs_to :feedback, polymorphic: true
end
