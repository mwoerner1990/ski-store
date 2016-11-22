class Store < ApplicationRecord

  belongs_to :supplier
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
