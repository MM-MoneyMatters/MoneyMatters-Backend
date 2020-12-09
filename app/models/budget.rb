class Budget < ApplicationRecord
    belongs_to :user
    belongs_to :type
    belongs_to :transaction
end
