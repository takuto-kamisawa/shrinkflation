class CreateProductDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.integer :product_id
      t.integer :net_weight
      t.integer :price
      t.timestamps
    end
  end
end
