class MakeChangesToOrgans < ActiveRecord::Migration[5.1]
  def change
    change_column :organs, :description, :text
    add_column :organs, :in_stock, :boolean
  end
end
