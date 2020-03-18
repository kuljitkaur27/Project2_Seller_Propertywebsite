class Seller < ApplicationRecord
  # has_secure_password
  # validates :email, :presence => true, :uniqueness => true
  has_many :properties
  has_many :owners
  has_one :users
end
