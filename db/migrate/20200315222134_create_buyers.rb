class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.text :name
      t.text :email
      t.text :phone_no
      t.integer :offer
    end
  end
end
