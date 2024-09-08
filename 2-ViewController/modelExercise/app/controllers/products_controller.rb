class ProductsController < ApplicationController
  def index
    render json: Product.all
  end  
  
  def create
    @product = Product.create( name: params[:name], quantity: params[:quantity], price: params[:price] )
    
    redirect_to "/"
  end

  def id
    render json: Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    render 'products/edit'
  end

  def update
    Product.find(params[:id]).update( name: params[:name], quantity: params[:quantity], price: params[:price] )
    redirect_to "/products/#{params[:id]}"
  end


  def count
    @product = Product.all
    render :plain => Product.all.length()
  end
end
