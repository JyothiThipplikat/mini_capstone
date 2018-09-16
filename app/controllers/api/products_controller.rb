class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index

    search_term = params[:search]
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]

     @products = Product.all

     category_name = params[:category]
     if category_name
      category = Category.find_by(name: category_name)
      @products = category.products
     end

    if search_term 
      @products = products.where("name iLIKE ?", "%#{search_term}%")
    end
    
    
    if sort_order && sort_attribute
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @product.order(sort_attribute)
    end

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
                          description: params[:description]
                  
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
