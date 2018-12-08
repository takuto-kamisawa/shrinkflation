class RemoveDetailFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price, :integer
    remove_column :products, :net_weight, :integer
  end
end
