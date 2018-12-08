class ProductDetail < ApplicationRecord
    belongs_to :product
    
  def priceperweight
    price.to_f / net_weight
  end
  
end
