class AddCardToShopper < ActiveRecord::Migration[5.2]
  def change
    add_column :shoppers, :card_number, :integer
  end
end
