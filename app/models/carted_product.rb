class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :store
  belongs_to :order
end
