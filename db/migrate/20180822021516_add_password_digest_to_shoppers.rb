class AddPasswordDigestToShoppers < ActiveRecord::Migration[5.2]
  def change
    add_column :shoppers, :password_digest, :string
  end
end
