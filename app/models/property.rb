class Property < ApplicationRecord
belongs_to :sellers
has_and_belongs_to_many :buyers
end
