class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to products_path
    else
      render new_product_path
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      redirect_to product_path(@product)
    else
      render edit_product_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end


end


# get '/products' => 'products#index' #products_path
# post '/products' => 'products#create'
# get '/products/new' => 'products#new' #new_product_path
# get '/products/:id/edit' => 'products#edit' #edit_product_path
# get '/products/:id' => 'products#show' #product_path
# put 'products/:id' => 'products#update'
# delete 'products/:id' => 'products#destroy'
