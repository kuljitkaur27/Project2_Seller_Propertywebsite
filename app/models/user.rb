class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_one :seller, :inverse_of => :user   #Relationship between Models 
end
