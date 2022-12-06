# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Purchase.destroy_all
Order.destroy_all
Product.destroy_all
Business.destroy_all

User.create(email: "user1@gmail.com", password: "user1@gmail.com")
User.create(email: "user2@gmail.com", password: "user2@gmail.com")
User.create(email: "user3@gmail.com", password: "user3@gmail.com")

Business.create(address: "17-25 Regent St. London", name: "Tesco")
Business.create(address: "15-17 Tottenham Ct Rd London", name: "Sainsbury's")
Business.create(address: "Dean St London", name: "Tesco Express")

Product.create(name: "Banana", price: 20, category: "Fruit", description: "This is the description of the Banana", deadline: Date.tomorrow, business_id: 1)
Product.create(name: "Apple", price: 10, category: "Fruit", description: "This is the description of the Apple", deadline: Date.tomorrow, business_id: 1)
Product.create(name: "Bread", price: 3, category: "Carbohydrate", description: "This is the description of the Bread", deadline: Date.tomorrow, business_id: 1)
Product.create(name: "Milk", price: 5, category: "Dairy", description: "This is the description of the Milk", deadline: Date.tomorrow, business_id: 2)
Product.create(name: "Butter", price: 5, category: "Dairy", description: "This is the description of the Butter", deadline: Date.tomorrow, business_id: 2)
Product.create(name: "Wine", price: 20, category: "Drink", description: "This is the description of the Wine", deadline: Date.tomorrow, business_id: 2)
Product.create(name: "Mackerel", price: 9, category: "Fish", description: "This is the description of the Mackerel", deadline: Date.tomorrow, business_id: 3)
Product.create(name: "Carrot", price: 12, category: "Vegetable", description: "This is the description of the Carrot", deadline: Date.tomorrow, business_id: 3)
Product.create(name: "Beef", price: 17, category: "Meat", description: "This is the description of the Beef", deadline: Date.tomorrow, business_id: 3)
Product.create(name: "Broccoli", price: 8, category: "Vegetable", description: "This is the description of the Broccoli", deadline: Date.tomorrow, business_id: 3)

Order.create(user_id: 1)
Order.create(user_id: 2)
Order.create(user_id: 3)

Purchase.create(product_id: 1, order_id: 1)
Purchase.create(product_id: 2, order_id: 1)
Purchase.create(product_id: 8, order_id: 1)
Purchase.create(product_id: 10, order_id: 1)

Purchase.create(product_id: 3, order_id: 2)
Purchase.create(product_id: 4, order_id: 2)
Purchase.create(product_id: 5, order_id: 2)

Purchase.create(product_id: 6, order_id: 3)
Purchase.create(product_id: 7, order_id: 3)
Purchase.create(product_id: 9, order_id: 3)
