fruits = ["Cherries", "Grapes", "Banana", "Watermelon", "Granny Smith Apple", "Bartlett Pear"]
vegetables = ["Carrot", "Broccoli", "Garlic", "Pepper", "Potato", "Tomato"]
meats = ["Chicken", "Duck", "Turkey", "Beef", "Lamb", "Pork"]
dairies = ["Milk", "Eggs", "Cheese", "Butter", "Yogurt", "Sour Cream"]

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
email_addresses = shopper_names.sample + "" + "@gmail.com"
city = "New York"
state = "NY"
zip = 10011
card_number = 4858935132817042
month = "September"
year = "2020"
cvv = 694
password_digest = "dnf3kjb4rgfehch9w8j309j05rne"
password = "cool"

3.times do
   Shopper.create(name: shopper_names.sample, address: shopper_addreesses.sample, email: email_addresses, city: city, state: state, zip: zip, card_number: card_number, expiration_month: month, expiration_year: year, cvv: cvv, password_digest: password_digest, password: password)
end


shopper_ids = [1, 2]
5.times do
 Order.create(shopper_id: shopper_ids.sample)
end



puts "Successful Seeding!"
