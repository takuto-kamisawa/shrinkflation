class Product < ApplicationRecord
  belongs_to :maker
  has_many :product_details
  
  def recent_product_detail
    product_details.first
  end
  
end