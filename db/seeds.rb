# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
  { name: 'カルビー', id: 1 },
  { name: 'ブルボン', id: 2 }
].each do |maker_set|
  maker = Maker.find_or_create_by(
    name: maker_set[:name],
    id: maker_set[:id]
  )
end

[
  { id: 1, name: 'ポテトチップス', maker_id: 1, net_weight: 100, price: 100 }
].each do |product_set|
  product = Product.find_by(id: product_set[:id])
  unless product
    Product.create(
      id: product_set[:id],
      name: product_set[:name],
      maker_id: product_set[:maker_id]
    )
    
    ProductDetail.create(
      product_id: product_set[:id],
      net_weight: product_set[:net_weight],
      price: product_set[:price]
    )
  end
end