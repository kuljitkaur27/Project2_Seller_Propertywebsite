# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : ruby 2.7.0

* Database creation - using Rails 5.2.4.1. Models created :
  Seller
  Owner
  Property
  User
  buyer

* How to run the test suite - There are few test cases :
Test cases for:
      A Seller (user) :
              can create a new user account.
              Can add, edit seller details.
              Can delete seller.
              Can create a new Property.
              Can link new property with their name.
              Can edit property's details.
              Can delete any property .

      An Administrator :
              can view all Users.
              can create a new user account.
              Can add, edit seller details.
              Can delete seller.
              Can create a new Property.
              Can link new property with their name.
              Can edit property's details.
              Can delete any property .

      A Buyer :
              Can Search for Properties based on different search option available on webpage.
              Can view Properties.
              Cannot make any changes to Database.


* Bootstrap is used for styling the website.

* Deployment instructions -  Heroku is used for Deployment "https://deploysellerpropertywebsite.herokuapp.com/ ". Following steps are done:
    git push heroku master
 		heroku run rails db:migrate
 		heroku run rails db:seed
 		heroku open

*   GIT is used to take the backup for he code - "https://kuljitkaur27.github.io/Project2_Seller_Propertywebsite/". Following steps are done:
      git add
      git commit -m "your message"
      git push origin master
