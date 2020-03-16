class Seller < ApplicationRecord
  has_many :properties
  has_many :owners
end
