class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :maker_id
      t.integer :NET_weight
      t.integer :price
      t.float :priceperweight

      t.timestamps
    end
  end
end
