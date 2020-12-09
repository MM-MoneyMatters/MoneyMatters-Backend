class Transaction < ApplicationRecord
    has_many :budgets, dependent: :destroy
    has_many :users, through: :budgets
    belongs_to :type
end
