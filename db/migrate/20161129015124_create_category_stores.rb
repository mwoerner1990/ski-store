class CreateCategoryStores < ActiveRecord::Migration[5.0]
  def change
    create_table :category_stores do |t|
      t.integer :store_id
      t.integer :category_id

      t.timestamps
    end
  end
end
