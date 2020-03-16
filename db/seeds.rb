Seller.destroy_all

s1 =  Seller.create :name => "John", :email => "John@ga.co", :phone_no => "0405060708"
s2 =  Seller.create :name => "Kuljit", :email => "kuljitkauremail@gmail.com", :phone_no => "0423456782"

puts "#{ Seller.count } Sellers created"

Owner.destroy_all

o1 =  Owner.create :name => "John" , :email => "John@ga.co" , :phone_no => "0405060708"
o2 =  Owner.create :name => "Jim" , :email => "Jim11@ga.co" , :phone_no => "0423233232"

puts "#{ Owner.count } Owners created"


Buyer.destroy_all

b1 = Buyer.create  :name => "Tom" , :email => "Tom@ga.co" , :phone_no => "0415060777",  :offer => 800000
b2 = Buyer.create  :name => "Mr. Smith" , :email => "Smith@ga.co" , :phone_no => "0422222222",  :offer => 820000

puts "#{ Buyer.count } buyers created"


Property.destroy_all
p1 =  Property.create  :location => "Blacktown" , :price => 850000, :construction_year => "1990",  :type => "House",  :bedrooms => 3, :bathrooms => 2, :car_spaces => 1, :landsize => 550, :bonus_feature =>"Swimming pool"

p2 =  Property.create  :location => "Blacktown" , :price => 750000, :construction_year => "2000",  :type => "Town_House",  :bedrooms => 2, :bathrooms => 2, :car_spaces => 1, :landsize =>350, :bonus_feature => "Near Train Station"

p3 =  Property.create  :location => "Paramatta" , :price => 900000, :construction_year => "1980",  :type =>"House",  :bedrooms => 3, :bathrooms => 2, :car_spaces => 1, :landsize =>550, :bonus_feature =>"Near shopping centre"

puts "#{ Property.count } Properties created"


# Associations ###############
puts "Sellers and Properties"
s1.properties << p1 << p3

puts "Sellers and Owners"
s1.owners << o1 << o2

puts "Buyers and Properties"
b1.propertries << p1 << p2
p1.buyers << b1 << b2
