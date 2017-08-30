class CreateOrgans < ActiveRecord::Migration[5.1]
  def change
    create_table :organs do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
