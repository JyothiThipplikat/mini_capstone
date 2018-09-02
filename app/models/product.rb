class Product < ApplicationRecord

  def is_discounted?
    price < 1500
  end

  def tax
    price + 0.09
  end

  def total
  sum = tax + price
  end

end

