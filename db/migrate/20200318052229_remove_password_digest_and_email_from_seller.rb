class RemovePasswordDigestAndEmailFromSeller < ActiveRecord::Migration[5.2]
  def change
    remove_column :sellers, :email, :text
    remove_column :sellers, :password_digest, :string
  end
end
