class RemovePriceperweightFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :priceperweight, :interger
  end
end
