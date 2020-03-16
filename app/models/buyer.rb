class Buyer < ApplicationRecord
has_and_belongs_to_many :properties
end
