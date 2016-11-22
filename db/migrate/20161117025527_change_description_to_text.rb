class ChangeDescriptionToText < ActiveRecord::Migration[5.0]
  def change
    change_column :stores, :description, :text 
  end
end
