class RemoveTypeFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :type, :string
  end
end
