class Product < ApplicationRecord
validates :name, presence: true
validates :name, uniqueness: true
validates :description, presence: true
validates :description, length: { minimum: 20 }
validates :description, length: { maximum: 250 }
validates :image_url, uniqueness: true
validates :price, presence: true
validates :price, numericality: { greater_than: 0 }





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

