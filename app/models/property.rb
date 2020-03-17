class Property < ApplicationRecord
belongs_to :seller,  :optional => true
has_and_belongs_to_many :buyers
end
