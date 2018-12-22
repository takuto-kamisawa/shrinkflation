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
  { id: 1, name: 'ポテトチップス', maker_id: 1 },
  { id: 2, name: 'じゃがりこ', maker_id: 1 }
].each do |product_set|
  product = Product.find_by(id: product_set[:id])
  unless product
    Product.create!(
      id: product_set[:id],
      name: product_set[:name],
      maker_id: product_set[:maker_id]
    )
  end
end

[
  { id: 1, product_id: 1, net_weight: 120, price: 100, sale_date: Date.current - 1.year },
  { id: 2, product_id: 1, net_weight: 100, price: 100, sale_date: Date.current },
  { id: 3, product_id: 2, net_weight: 150, price: 100, sale_date: Date.current - 2.year },
  { id: 4, product_id: 2, net_weight: 120, price: 100, sale_date: Date.current - 1.year },
  { id: 5, product_id: 2, net_weight: 100, price: 100, sale_date: Date.current }
].each do |product_set|
  product_detail = ProductDetail.find_by(id: product_set[:id])
  unless product_detail
    ProductDetail.create!(
      id: product_set[:id],
      product_id: product_set[:product_id],
      net_weight: product_set[:net_weight],
      price: product_set[:price],
      sale_date: product_set[:sale_date]
    )
  end
end