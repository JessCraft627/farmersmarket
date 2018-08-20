# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product_names = ["apple", "banana", "turkey"]
prices = [4, 10, 14, 21]
weights = [1, 2, 10]

5.times do
  Product.create(name: product_names.sample, price: prices.sample, weight: weights.sample)
end

shopper_names = ["Jess", "Yung"]
shopper_addreesses = ["180 Broadway", "603 5th Avenue"]

3.times do
  Shopper.create(name: shopper_names.sample, address: shopper_addreesses.sample)
end

shopper_ids = [1, 2]

5.times do
  Order.create(shopper_id: shopper_ids.sample)
end

order_ids = [1, 2, 3, 4, 5]
product_ids = [1, 2, 3, 4, 5]
5.times do
  ProductOrder.create(order_id: order_ids.sample, product_id: product_ids.sample)
end


puts "Successful Seeding!"
