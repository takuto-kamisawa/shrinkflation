class Product < ApplicationRecord
    belongs_to :maker
    
     def priceperweight
#     price / NET_weight
    #   before_create do
    #     self.priceperweight = price / NET_weight
    #   end
    #  end





#   def set_extra_information
#   {priceperweight: priceperweight}
#   end
  
#これだけで良さそう？
 #before_save do
     #self.priceperweight = price / NET_weight
 #end
     end
end