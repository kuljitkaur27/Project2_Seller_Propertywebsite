class CreateBuyersProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers_properties do |t|
      t.integer :buyer_id
      t.integer :property_id
    end
  end
end
