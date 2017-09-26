class RemoveColumnsFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :organ_id, :integer
  end
end
