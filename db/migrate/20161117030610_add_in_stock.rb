class AddInStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :in_stock, :string
  end
end
