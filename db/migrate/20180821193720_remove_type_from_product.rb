class RemoveTypeFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :Type, :string
  end
end
