class Product < ApplicationRecord
  belongs_to :maker
  belongs_to :product_detail
    
  def priceperweight
    price.to_f / net_weight
  end
     
end