class User < ApplicationRecord
    has_many :budgets, dependent: :destroy
    has_many :transactions, through: :budgets
    has_many :goals


    validates_uniqueness_of :email
    validates_presence_of :email
    validates :password, :presence => true,
                       :length => {:within => 3..12},
                       :on => :create
    has_secure_password
end
