# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_18_052707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "phone_no"
    t.integer "offer"
  end

  create_table "buyers_properties", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "property_id"
  end

  create_table "owners", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "phone_no"
    t.integer "seller_id"
  end

  create_table "properties", force: :cascade do |t|
    t.text "location"
    t.integer "price"
    t.string "construction_year"
    t.string "property_type"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "car_spaces"
    t.integer "landsize"
    t.text "bonus_features"
    t.string "status"
    t.text "main_image"
    t.text "image1"
    t.text "image2"
    t.text "image3"
    t.integer "seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.text "name"
    t.text "phone_no"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.integer "seller_id"
  end

end
