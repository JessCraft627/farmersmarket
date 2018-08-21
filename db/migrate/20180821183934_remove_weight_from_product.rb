class RemoveWeightFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :weight, :integer
  end
end
