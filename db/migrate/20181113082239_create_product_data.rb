class CreateProductData < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.integer :net_weight
      t.integer :price
      t.timestamps
    end
  end
end
