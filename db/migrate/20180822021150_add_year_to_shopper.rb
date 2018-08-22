class AddYearToShopper < ActiveRecord::Migration[5.2]
  def change
    add_column :shoppers, :expiration_month, :string
    add_column :shoppers, :expiration_year, :integer
    add_column :shoppers, :cvv, :integer
  end
end
