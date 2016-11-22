class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :stores, :price, "numeric USING CAST(price AS numeric)"
    change_column :stores, :price, :decimal, precision: 8, scale: 2
  end
end
