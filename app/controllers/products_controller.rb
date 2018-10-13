class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
end

#<% select :name, :maker, :NET_weight, :price, :priceperweight  %>
