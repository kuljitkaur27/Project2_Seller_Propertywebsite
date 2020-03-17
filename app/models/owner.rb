class Owner < ApplicationRecord
belongs_to :sellers, :optional => true
end
