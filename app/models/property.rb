class Property < ApplicationRecord
#Relationship between Models  
belongs_to :seller,  :optional => true
has_and_belongs_to_many :buyers

# Scope of filter elements on search Page
scope :filter_by_location, -> (location) { where location: location }
scope :filter_by_price, -> (price) { where price: price }
scope :filter_by_property_type, -> (property_type) { where property_type: property_type }
scope :filter_by_bedrooms, -> (bedrooms) { where bedrooms: bedrooms }
scope :filter_by_bathrooms, -> (bathrooms) { where bathrooms: bathrooms }
scope :filter_by_car_spaces, -> (car_spaces) { where car_spaces: car_spaces }
scope :filter_by_landsize, -> (landsize) { where landsize: landsize }

end
