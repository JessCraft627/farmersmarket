class AddEmailToShopper < ActiveRecord::Migration[5.2]
  def change
    add_column :shoppers, :email, :string
    add_column :shoppers, :city, :string
    add_column :shoppers, :state, :string
    add_column :shoppers, :zip, :integer
  end
end
