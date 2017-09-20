class CreateOrganCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :organ_categories do |t|
      t.integer :organ_id
      t.integer :category_id

      t.timestamps
    end
  end
end
