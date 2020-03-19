class Seller < ApplicationRecord
#Relationship between Models 
  has_many :properties
  has_many :owners
  belongs_to :user, :inverse_of => :seller, :optional => true
  scope :filter_by_user_id, -> (user_id) { where user_id: @current_user.user_id }

end
