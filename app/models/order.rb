class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :stores, through: :carted_products
end
