class CartedProduct < ApplicationRecord
  belongs_to :users
  belongs_to :stores
  belongs_to :orders
end
