class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.text :name
      t.text :phone_no
      t.integer :user_id
    end
  end
end
