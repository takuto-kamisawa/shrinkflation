class Product < ApplicationRecord
  belongs_to :maker
    
  def priceperweight
    price.to_f / net_weight
  end
     
end