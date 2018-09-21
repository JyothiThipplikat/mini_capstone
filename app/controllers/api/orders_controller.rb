class Api::OrdersController < ApplicationController
before_action :authenticate_user, only: [:index, :create]


def index 
   @orders = current_user.orders
   render'index.json.jbuilder'
end


  def create 
    carted_products = current_user.cart
    @order = Order.new[user_id: current_user.id]

   subtotal = 0
    carted_product.each do |carted_product|
    subtotal = carted_product.quantity * carted_product.carted_product.price
    end

    tax = subtotal + 0.09

    total = subtotal + tax

    @order = Order.new(
                      user_id: current_user.id,
                      subtotal: subtotal,
                      tax: tax,
                      total: total
                      )

  
    @order.save

    carted_product.update_all(status: 'purchased', order_id: @order.id)

    render 'show.json.jbuilder'
  end
end
