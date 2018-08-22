class AddFoodTypeToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :food_type, :string
  end
end
