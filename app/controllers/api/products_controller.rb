class Api::ProductsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @products = Product.all
    render 'index.json.jbuilder' 
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create

    @product = Product.new(
                         
                          name: params[:name],
                          price: params[:price],
                          instock: params[:instock],
                          description: params[:description],
                          image_url: params[:image_url]

                         )

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.instock = params[:instock] || @product.instock
    @product.description = params[:description] || @product.description
    @product.image_url = params[:image_url] || @product.image_url
  
    
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @products.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "You deleted the product!"}
  end

end
