class Store < ApplicationRecord

  def sale_message
    if price.to_i <= 600
      "Discount item!"
    else
      "Everyday Value!"
    end
  end

  def tax
    price.to_i * 0.09
  end

  def total
    tax + price.to_i
  end

end
