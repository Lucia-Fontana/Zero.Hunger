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
User.destroy_all

# User.create(email: "user1@gmail.com", password: "user1@gmail.com")
# User.create(email: "user2@gmail.com", password: "user2@gmail.com")
# User.create(email: "user3@gmail.com", password: "user3@gmail.com")

# business 1 creation + products
business1 = Business.new(address: "129-133 Kingsway, London WC2B 6NH", name: "Sainsbury's")
business1.save!

p1 = Product.new(name: "Banana", price: 1, category: "Fruit", description: "This is the description of the Banana", deadline: Date.tomorrow, business_id: business1.id)
p1.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'bananes.jpg')), filename: 'bananes.jpg', content_type: 'bananes.png')
p1.save!
p2 = Product.new(name: "Apple", price: 2, category: "Fruit", description: "This is the description of the Apple", deadline: Date.tomorrow, business_id: business1.id)
p2.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'apples.jpg')), filename: 'apples.jpg', content_type: 'apples.png')
p2.save!
p3 = Product.new(name: "Bread", price: 3, category: "Carbohydrate", description: "This is the description of the Bread", deadline: Date.tomorrow, business_id: business1.id)
p3.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'bread.JPG')), filename: 'bread.JPG', content_type: 'bread.png')
p3.save!
p4 = Product.new(name: "Milk", price: 5, category: "Dairy", description: "This is the description of the Milk", deadline: Date.tomorrow, business_id: business1.id)
p4.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'milk.jpg')), filename: 'milk.jpg', content_type: 'milk.png')
p4.save!
p5 = Product.new(name: "Butter", price: 5, category: "Dairy", description: "This is the description of the Butter", deadline: Date.tomorrow, business_id: business1.id)
p5.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'butter.png')), filename: 'butter.png', content_type: 'butter.png')
p5.save!

# business 2 creation + products
business2 = Business.new(address: "58-66 Market St, Manchester M1 1PW", name: "Tesco Express")
business2.save!

p6 = Product.new(name: "St Amour", price: 15, category: "Drink", description: "One of a best French Wine", deadline: Date.tomorrow, business_id: business2.id)
p6.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'st-amour.jpg')), filename: 'st-amour.jpg', content_type: 'st-amour.png')
p6.save!
p7 = Product.new(name: "Mackerel", price: 9, category: "Fish", description: "This is the description of the Mackerel", deadline: Date.tomorrow, business_id: business2.id)
p7.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'mackerel.jpg')), filename: 'mackerel.jpg', content_type: 'mackerel.png')
p7.save!
p8 = Product.new(name: "Carrot", price: 3, category: "Vegetable", description: "This is the description of the Carrot", deadline: Date.tomorrow, business_id: business2.id)
p8.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'carrots.jpg')), filename: 'carrots.jpg', content_type: 'carrots.png')
p8.save!
p9 = Product.new(name: "Beef", price: 10, category: "Meat", description: "This is the description of the Beef", deadline: Date.tomorrow, business_id: business2.id)
p9.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'beef.jpg')), filename: 'beef.jpg', content_type: 'beef.png')
p9.save!
p10 = Product.new(name: "Broccoli", price: 8, category: "Vegetable", description: "This is the description of the Broccoli", deadline: Date.tomorrow, business_id: business2.id)
p10.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'broccoli.jpg')), filename: 'broccoli.jpg', content_type: 'broccoli.png')
p10.save!

# business 3 creation + products
business3 = Business.new(address: "Corso Italia, 13, 20122 Milano MI", name: "Supermercato Carrefour Market")
business3.save!

p11 = Product.new(name: "St Emilion", price: 15, category: "Drink", description: "One of a best French Wine", deadline: Date.tomorrow, business_id: business3.id)
p11.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'st-emilion.jpg')), filename: 'st-emilion.jpg', content_type: 'st-emilion.png')
p11.save!
p12 = Product.new(name: "Salmon", price: 9, category: "Fish", description: "Ready to cook for dinner!", deadline: Date.tomorrow, business_id: business3.id)
p12.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'salmon.jpg')), filename: 'salmon.jpg', content_type: 'salmon.png')
p12.save!
p13 = Product.new(name: "Eggplant", price: 3, category: "Vegetable", description: "2 kilos of eggplants", deadline: Date.tomorrow, business_id: business3.id)
p13.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'eggplants.jpg')), filename: 'eggplants.jpg', content_type: 'eggplants.png')
p13.save!
p14 = Product.new(name: "Chicken", price: 10, category: "Meat", description: "1 big chicken, Origin: France", deadline: Date.tomorrow, business_id: business3.id)
p14.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'chicken.jpg')), filename: 'chicken.jpg', content_type: 'chicken.png')
p14.save!
p15 = Product.new(name: "Tomatoes", price: 8, category: "Vegetable", description: "10kilos of tomatoes", deadline: Date.tomorrow, business_id: business3.id)
p15.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'tomatoes.jpg')), filename: 'tomatoes.jpg', content_type: 'tomatoes.png')
p15.save!

# business 4 creation + products
business4 = Business.new(address: "152 Rue La Fayette, 75010 Paris", name: "Carrefour City")
business4.save!

p16 = Product.new(name: "St Amour", price: 15, category: "Drink", description: "One of a best French Wine", deadline: Date.tomorrow, business_id: business4.id)
p16.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'st-amour.jpg')), filename: 'st-amour.jpg', content_type: 'st-amour.png')
p16.save!
p17 = Product.new(name: "Whiting", price: 9, category: "Fish", description: "Ready to cook for dinner!", deadline: Date.tomorrow, business_id: business4.id)
p17.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'merlan.jpg')), filename: 'merlan.jpg', content_type: 'merlan.png')
p17.save!
p18 = Product.new(name: "Zucchini", price: 3, category: "Vegetable", description: "5 kilos of zucchinis", deadline: Date.tomorrow, business_id: business4.id)
p18.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'courgettes.jpg')), filename: 'courgettes.jpg', content_type: 'courgettes.png')
p18.save!
p19 = Product.new(name: "Pork", price: 15, category: "Meat", description: "2 kilos of porc, Origin: France", deadline: Date.tomorrow, business_id: business4.id)
p19.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'porc.jpg')), filename: 'porc.jpg', content_type: 'porc.png')
p19.save!
p20 = Product.new(name: "Green beans", price: 8, category: "Vegetable", description: "10kilos of green beans", deadline: Date.tomorrow, business_id: business4.id)
p20.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'greenbeans.jpg')), filename: 'greenbeans.jpg', content_type: 'greenbeans.png')
p20.save!

# business 5 creation + products
business5 = Business.new(address: "42 Av. Emile Counord, 33000 Bordeaux", name: "Auchan")
business5.save!

p21 = Product.new(name: "Yoghurts", price: 15, category: "Dairy", description: "10 yoghurts to eat before today !", deadline: Date.tomorrow, business_id: business5.id)
p21.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'yaourts.jpg')), filename: 'yaourts.jpg', content_type: 'yaourts.png')
p21.save!
p22 = Product.new(name: "Strawberries", price: 9, category: "Fruit", description: "5 kilos of strawberries", deadline: Date.tomorrow, business_id: business5.id)
p22.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'fraises.jpg')), filename: 'fraises.jpg', content_type: 'fraises.png')
p22.save!
p23 = Product.new(name: "Potatoes", price: 3, category: "Vegetable", description: "5 kilos of potatoes", deadline: Date.tomorrow, business_id: business5.id)
p23.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'potatoes.jpg')), filename: 'potatoes.jpg', content_type: 'potatoes.png')
p23.save!
p24 = Product.new(name: "Cheese", price: 15, category: "Meat", description: "TO eat as soon as possible!", deadline: Date.tomorrow, business_id: business5.id)
p24.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'cheese.png')), filename: 'cheese.png', content_type: 'cheese.png')
p24.save!
p25 = Product.new(name: "Tomatoes", price: 5, category: "Vegetable", description: "5 kilos of tomatoes", deadline: Date.tomorrow, business_id: business5.id)
p25.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'tomatoes.jpg')), filename: 'tomatoes.jpg', content_type: 'tomatoes.png')
p25.save!

# Order.create(user_id: 1)
# Order.create(user_id: 2)
# Order.create(user_id: 3)

# Purchase.create(product_id: 1, order_id: 1)
# Purchase.create(product_id: 2, order_id: 1)
# Purchase.create(product_id: 8, order_id: 1)
# Purchase.create(product_id: 10, order_id: 1)

# Purchase.create(product_id: 3, order_id: 2)
# Purchase.create(product_id: 4, order_id: 2)
# Purchase.create(product_id: 5, order_id: 2)

# Purchase.create(product_id: 6, order_id: 3)
# Purchase.create(product_id: 7, order_id: 3)
# Purchase.create(product_id: 9, order_id: 3)
