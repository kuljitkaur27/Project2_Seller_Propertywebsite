<<<<<<< HEAD
User.destroy_all
u1 = User.create :email => 'john@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'kuljit@ga.co', :password => 'chicken', :admin => false
puts "#{ User.count } users created",


Seller.destroy_all
s1 =  Seller.create :name => "John", :phone_no => "0405060708"
s2 =  Seller.create :name => "Kuljit", :phone_no => "0423456782"
=======
Seller.destroy_all

s1 =  Seller.create :name => "John", :email => "John@ga.co", :phone_no => "0405060708", :password_digest => "Hello123"
s2 =  Seller.create :name => "Kuljit", :email => "kuljitkauremail@gmail.com", :phone_no => "0423456782" , :password_digest => "sayhello123"

>>>>>>> parent of 0882ea8... version 3.3
puts "#{ Seller.count } Sellers created"

Owner.destroy_all
o1 = Owner.create :name => "John" , :email => "John@ga.co" , :phone_no => "0405060708"
o2 = Owner.create :name => "Jim" , :email => "Jim11@ga.co" , :phone_no => "0423233232"
puts "#{ Owner.count } Owners created"


Buyer.destroy_all
b1 = Buyer.create  :name => "Tom" , :email => "Tom@ga.co" , :phone_no => "0415060777",  :offer => 800000
b2 = Buyer.create  :name => "Mr. Smith" , :email => "Smith@ga.co" , :phone_no => "0422222222",  :offer => 820000
puts "#{ Buyer.count } buyers created"


Property.destroy_all
p1 =  Property.create  :location => "Blacktown" , :price => 850000, :construction_year => "1990",  :property_type => "House",  :bedrooms => 3, :bathrooms => 2, :car_spaces => 1, :landsize => 550, :bonus_features =>"Swimming pool", :main_image => "/assets/house1.jpeg", :image1 => "/assets/inside1.jpeg", :image2 => "/assets/inside2.jpeg", :image3 => "/assets/inside3.jpeg"

p2 =  Property.create  :location => "Blacktown" , :price => 750000, :construction_year => "2000",  :property_type => "Town_House",  :bedrooms => 2, :bathrooms => 2, :car_spaces => 1, :landsize =>350, :bonus_features => "Near Train Station", :main_image => "/assets/house2.jpeg", :image1 => "/assets/inside1.jpeg", :image2 => "/assets/inside2.jpeg", :image3 => "/assets/inside3.jpeg"

p3 =  Property.create  :location => "Paramatta" , :price => 900000, :construction_year => "1980",  :property_type =>"House",  :bedrooms => 3, :bathrooms => 2, :car_spaces => 1, :landsize =>550, :bonus_features =>"Near shopping centre", :main_image => "/assets/house3.jpeg", :image1 => "/assets/inside1.jpeg", :image2 => "/assets/inside2.jpeg", :image3 => "/assets/inside3.jpeg"

puts "#{ Property.count } Properties created"


# Associations ###############
<<<<<<< HEAD

=======
>>>>>>> parent of 0882ea8... version 3.3
puts "Sellers and Properties"
s1.properties << p1 << p3

puts "Sellers and Owners"
s1.owners << o1 << o2

puts "Buyers and Properties"
b1.properties << p1 << p2
p1.buyers << b1 << b2

puts "Sellers and Users"
u1.sellers << s1
u2.sellers << s2
