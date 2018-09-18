class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :carted_product

  def calculate_subtotal
    self.subtotal = product.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def build_totals
   calculate_subtotal
   calculate_tax
   calculate_total 
  end
end
