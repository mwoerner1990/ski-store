class Store < ApplicationRecord
  has_many :images
  belongs_to :supplier
  has_many :orders
  has_many :carted_products

  has_many :category_stores
  has_many :categories, through: :category_stores
  # def sale_message
  #   if price.to_i <= 600
  #     "Discount item!"
  #   else
  #     "Everyday Value!"
  #   end
  # end
  def tax
    price * 0.09
  end

  def total
    tax + price
  end

  def discounted?
    price <= 600
  end

  def stock 
    if price < 600
      puts in_stock
    end
  end
end
