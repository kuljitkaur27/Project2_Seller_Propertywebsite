class Owner < ApplicationRecord
belongs_to :seller, :optional => true
end
