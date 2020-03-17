class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text    :location
      t.integer :price
      t.string  :construction_year
      t.string  :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :car_spaces
      t.integer :landsize
      t.text    :bonus_features
      t.string  :status
      t.text    :main_image
      t.text    :image1
      t.text    :image2
      t.text    :image3
      t.integer :seller_id
    end
  end
end
