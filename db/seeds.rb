# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
fruits = ["cherries", "grapes", "bananas", "watermelon", "granny smith apples", "bartlett pear"]
vegetables = ["carrots", "broccoli", "garlic", "pepper", "potato", "tomato"]
meats = ["chicken", "duck", "turkey", "beef", "lamb", "pork"]
dairies = ["milk", "egg", "cheese", "butter", "yogurt", "sour cream"]

fruit_prices = [8, 5, 2, 5, 6, 1]
vegetable_prices = [3, 4, 4, 4, 2, 4]
meat_prices = [3, 15, 6, 30, 29, 11]
dairy_prices = [5, 4, 8, 5, 5, 5]

counter = 0
6.times do
  Product.create(name: fruits[counter], price: fruit_prices[counter], food_type: "fruit")
  Product.create(name: vegetables[counter], price: vegetable_prices[counter], food_type: "vegetable")
  Product.create(name: meats[counter], price: meat_prices[counter], food_type: "meat")
  Product.create(name: dairies[counter], price: dairy_prices[counter], food_type: "dairy")
  counter += 1
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
