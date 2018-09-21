class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_product
  has_many :products, through: :carted_product
  

  def build_totals
   calculate_subtotal
   calculate_tax
   calculate_total 
  end
end
