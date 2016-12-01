class Category < ApplicationRecord
  has_many :category_stores
  has_many :stores, through: :category_stores
end
