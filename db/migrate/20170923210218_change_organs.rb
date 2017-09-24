class ChangeOrgans < ActiveRecord::Migration[5.1]
  def change
    remove_column :organs, :image, :string
  end
end
