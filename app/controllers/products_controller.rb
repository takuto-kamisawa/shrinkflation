class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
   def new
     @product = Product.new
　 end
　 
　 def create
  @product = Product.new(params.require(:product).permit(:maker, :name, :NET_weight, :price, :priceperweight))
  @product.save
  redirect_to products_path
　 end
end

#<% select :name, :maker, :NET_weight, :price, :priceperweight  %>
