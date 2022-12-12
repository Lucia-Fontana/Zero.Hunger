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
business1 = Business.new(address: "16 Villa Gaudelet, Paris", name: "Sainsbury's")
business1.save!

p1 = Product.new(name: "Bananas", price: 2, category: "Fruit", description: "3 kilos of Bananas. Bananas are Fairtrade certified, traded, audited and sourced from Fairtrade producers, total 100%. For more visit info.fairtrade.net/sourcing.", deadline: Date.tomorrow, business_id: business1.id)
p1.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'bananes.jpg')), filename: 'bananes.jpg', content_type: 'bananes.png')
p1.save!
p2 = Product.new(name: "Apple", price: 2, category: "Fruit", description: "Two kilos of apples. Suitable for vegetarians. Grown in United Kingdom", deadline: Date.tomorrow, business_id: business1.id)
p2.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'apples.jpg')), filename: 'apples.jpg', content_type: 'apples.png')
p2.save!
p3 = Product.new(name: "Bread", price: 3, category: "Carbohydrate", description: "Five breads. Suitable for Vegetarians and Vegans", deadline: Date.tomorrow, business_id: business1.id)
p3.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'bread.JPG')), filename: 'bread.JPG', content_type: 'bread.png')
p3.save!
p4 = Product.new(name: "Milk", price: 5, category: "Dairy", description: "Ten bottles of milk. Pasteurised, Homogenised, Organic Semi-Skimmed Milk. Naturally high in calcium, protein, iodine, vitamins B2 and B12, a natural source of nutrients", deadline: Date.tomorrow, business_id: business1.id)
p4.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'milk.jpg')), filename: 'milk.jpg', content_type: 'milk.png')
p4.save!
p5 = Product.new(name: "Butter", price: 5, category: "Dairy", description: "French butter, origin Normandy. 75% Vegetable Fat Spread. Perfect for spreading, cooking, baking and topping", deadline: Date.tomorrow, business_id: business1.id)
p5.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'butter.png')), filename: 'butter.png', content_type: 'butter.png')
p5.save!
p26 = Product.new(name: "Artichokes", price: 10, category: "Vegetable", description: "10 artichokes. Typical Values as Drained Per 100g : Energy 571 kJ/138 kcal", deadline: Date.tomorrow, business_id: business1.id)
p26.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'artichokes.jpg')), filename: 'artichokes.jpg', content_type: 'artichokes.png')
p26.save!
p27 = Product.new(name: "Beetroots", price: 2, category: "Vegetable", description: "3 kilos of beetroots. Typical Values 100g contains : Energy 175 kJ/42 kcal", deadline: Date.tomorrow, business_id: business1.id)
p27.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'beetroots.jpg')), filename: 'beetroots.jpg', content_type: 'beetroots.png')
p27.save!
p28 = Product.new(name: "Lamb Steaks", price: 10, category: "Meat & Fish", description: "Two kilos of lamb steaks. Reared by our trusted farmers", deadline: Date.tomorrow, business_id: business1.id)
p28.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'lamb.jpg')), filename: 'lamb.jpg', content_type: 'lamb.png')
p28.save!
p29 = Product.new(name: "Orange Juice", price: 2, category: "Drink", description: "Three bottles of Orange Juice. 100% squeezed juice.", deadline: Date.tomorrow, business_id: business1.id)
p29.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'orange-juice.png')), filename: 'orange-juice.png', content_type: 'orange-juice.png')
p29.save!
p29 = Product.new(name: "Grape Juice", price: 4, category: "Drink", description: "Four liters of Grape Juice. Typical Values 100g contains : Energy 271 kJ/64 kcal.", deadline: Date.tomorrow, business_id: business1.id)
p29.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'grape-juice.png')), filename: 'grape-juice.png', content_type: 'grape-juice.png')
p29.save!
p55 = Product.new(name: "Leeks", price: 4, category: "Vegetable", description: "Five kilos of leeks. Eating plenty of fruit and Vegetable is one of the most important dietary changes needed to improve your diet and health. Aim for at least 5 different portions of fruit or veg a day, they contain nutrients vital for health. fresh, frozen, dried, canned and juice all count.", deadline: Date.tomorrow, business_id: business1.id)
p55.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'leeks.jpg')), filename: 'leeks.jpg', content_type: 'leeks.png')
p55.save!
p56 = Product.new(name: "Mushrooms", price: 7, category: "Vegetable", description: "Three kilos of mushrooms. Grown in Ireland, Netherlands, United Kingdom", deadline: Date.tomorrow, business_id: business1.id)
p56.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'mushrooms.jpg')), filename: 'mushrooms.jpg', content_type: 'mushrooms.png')
p56.save!

# business 2 creation + products
business2 = Business.new(address: "17-25 Regent St., St. James's, London SW1Y 4LR", name: "Tesco Express")
business2.save!

p6 = Product.new(name: "St Amour", price: 15, category: "Drink", description: "One of a best French Wine", deadline: Date.tomorrow, business_id: business2.id)
p6.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'st-amour.jpg')), filename: 'st-amour.jpg', content_type: 'st-amour.png')
p6.save!
p7 = Product.new(name: "Mackerel", price: 9, category: "Meat & Fish", description: "100% of our mackerel is British, wild-caught British and High in Omega 3 ", deadline: Date.tomorrow, business_id: business2.id)
p7.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'mackerel.jpg')), filename: 'mackerel.jpg', content_type: 'mackerel.png')
p7.save!
p8 = Product.new(name: "Carrots", price: 3, category: "Vegetable", description: "Five kilos of carrots. Aim for at least 5 different portions of fruit or veg a day. Fresh, frozen, dried, canned and juice all count.", deadline: Date.tomorrow, business_id: business2.id)
p8.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'carrots.jpg')), filename: 'carrots.jpg', content_type: 'carrots.png')
p8.save!
p9 = Product.new(name: "Beef", price: 10, category: "Meat & Fish", description: "Two kilos of beef. Our Taste the Difference cattle are selected from trusted farms. Our farmers are dedicated to producing the best quality beef. Our Beef is expertly butchered and matured for a fuller flavour, exceptional tenderness and succulence.", deadline: Date.tomorrow, business_id: business2.id)
p9.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'beef.jpg')), filename: 'beef.jpg', content_type: 'beef.png')
p9.save!
p10 = Product.new(name: "Broccoli", price: 8, category: "Vegetable", description: "Ten broccolis. Grown in Netherlands, Spain, United Kingdom", deadline: Date.tomorrow, business_id: business2.id)
p10.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'broccoli.jpg')), filename: 'broccoli.jpg', content_type: 'broccoli.png')
p10.save!
p30 = Product.new(name: "Cherries", price: 8, category: "Fruit", description: "3 kilos of cherries, origin France", deadline: Date.tomorrow, business_id: business1.id)
p30.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'cherries.jpg')), filename: 'cherries.jpg', content_type: 'cherries.png')
p30.save!
p31 = Product.new(name: "Coconuts", price: 3, category: "Fruit", description: "5 coconuts, origin Spain.", deadline: Date.tomorrow, business_id: business1.id)
p31.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'coconuts.png')), filename: 'coconuts.png', content_type: 'coconuts.png')
p31.save!
p32 = Product.new(name: "Apple Juice", price: 4, category: "Drink", description: "Four liters of Apple Juice. Made with 100% fruit.", deadline: Date.tomorrow, business_id: business1.id)
p32.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'apple-juice.png')), filename: 'apple-juice.png', content_type: 'apple-juice.png')
p32.save!
p33 = Product.new(name: "Pastas", price: 3, category: "Carbohydrate", description: "Ten kilos of pastas. Traditional production methods that stay true to our over 125 years old family recipe", deadline: Date.tomorrow, business_id: business1.id)
p33.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'pastas.jpg')), filename: 'pastas.jpg', content_type: 'pastas.png')
p33.save!
p34 = Product.new(name: "Cream", price: 5, category: "Dairy", description: "Eight bottles of cream. Pasteurised British single cream", deadline: Date.tomorrow, business_id: business1.id)
p34.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'cream.jpg')), filename: 'cream.jpg', content_type: 'cream.png')
p34.save!
p35 = Product.new(name: "Rice", price: 3, category: "Carbohydrate", description: "Ten packets. Long Grain rice is simple and versatile; one of our classics. It contains no artificial flavours, colours or preservatives and is gluten free.", deadline: Date.tomorrow, business_id: business1.id)
p35.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'rice.jpg')), filename: 'rice.jpg', content_type: 'rice.png')
p35.save!

# business 3 creation + products
business3 = Business.new(address: "The Brunswick Centre, 23-39 Handel St, London WC1N 1JX", name: "Waitrose & Partners Bloomsbury")
business3.save!

p11 = Product.new(name: "St Emilion", price: 15, category: "Drink", description: "One of a best French Wine", deadline: Date.tomorrow, business_id: business3.id)
p11.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'st-emilion.jpg')), filename: 'st-emilion.jpg', content_type: 'st-emilion.png')
p11.save!
p12 = Product.new(name: "Salmon", price: 9, category: "Meat & Fish", description: "Ready to cook for dinner!", deadline: Date.tomorrow, business_id: business3.id)
p12.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'salmon.jpg')), filename: 'salmon.jpg', content_type: 'salmon.png')
p12.save!
p13 = Product.new(name: "Eggplant", price: 3, category: "Vegetable", description: "2 kilos of eggplants", deadline: Date.tomorrow, business_id: business3.id)
p13.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'eggplants.jpg')), filename: 'eggplants.jpg', content_type: 'eggplants.png')
p13.save!
p14 = Product.new(name: "Chicken", price: 10, category: "Meat & Fish", description: "1 big chicken, Origin: France", deadline: Date.tomorrow, business_id: business3.id)
p14.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'chicken.jpg')), filename: 'chicken.jpg', content_type: 'chicken.png')
p14.save!
p15 = Product.new(name: "Tomatoes", price: 8, category: "Vegetable", description: "10kilos of tomatoes", deadline: Date.tomorrow, business_id: business3.id)
p15.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'tomatoes.jpg')), filename: 'tomatoes.jpg', content_type: 'tomatoes.png')
p15.save!
p36 = Product.new(name: "Apple Juice", price: 5, category: "Drink", description: "Seven liters of Apple Juice", deadline: Date.tomorrow, business_id: business1.id)
p36.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'apple-juice.png')), filename: 'apple-juice.png', content_type: 'apple-juice.png')
p36.save!
p37 = Product.new(name: "Grapes", price: 3, category: "Fruit", description: "3 kilos of grapes", deadline: Date.tomorrow, business_id: business1.id)
p37.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'grapes.png')), filename: 'grapes.png', content_type: 'grapes.png')
p37.save!
p38 = Product.new(name: "Lemons", price: 3, category: "Fruit", description: "10 lemons", deadline: Date.tomorrow, business_id: business1.id)
p38.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'lemons.jpg')), filename: 'lemons.jpg', content_type: 'lemons.png')
p38.save!
p39 = Product.new(name: "Cookies", price: 3, category: "Carbohydrate", description: "Ten packets of Mulino Bianco Baiocchi Cookies", deadline: Date.tomorrow, business_id: business1.id)
p39.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'cookies.jpg')), filename: 'cookies.jpg', content_type: 'cookies.png')
p39.save!
p40 = Product.new(name: "Risotto", price: 3, category: "Carbohydrate", description: "Five packets of Risotto Delfino Battista", deadline: Date.tomorrow, business_id: business1.id)
p40.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'risotto.jpg')), filename: 'risotto.jpg', content_type: 'risotto.png')
p40.save!
p41 = Product.new(name: "Mozzarella", price: 5, category: "Dairy", description: "Two kilos of mozzarella", deadline: Date.tomorrow, business_id: business1.id)
p41.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'mozzarella.jpg')), filename: 'mozzarella.jpg', content_type: 'mozzarella.png')
p41.save!
p42 = Product.new(name: "Ricotta", price: 5, category: "Dairy", description: "One kilo of ricotta Galbani", deadline: Date.tomorrow, business_id: business1.id)
p42.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'ricotta.png')), filename: 'ricotta.png', content_type: 'ricotta.png')
p42.save!

# business 4 creation + products
business4 = Business.new(address: "55 Rupert St, London W1D 7PJ,", name: "Rupert Supermarket")
business4.save!

p16 = Product.new(name: "St Amour", price: 15, category: "Drink", description: "One of a best French Wine", deadline: Date.tomorrow, business_id: business4.id)
p16.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'st-amour.jpg')), filename: 'st-amour.jpg', content_type: 'st-amour.png')
p16.save!
p17 = Product.new(name: "Whiting", price: 9, category: "Meat & Fish", description: "Ready to cook for dinner!", deadline: Date.tomorrow, business_id: business4.id)
p17.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'merlan.jpg')), filename: 'merlan.jpg', content_type: 'merlan.png')
p17.save!
p18 = Product.new(name: "Zucchini", price: 3, category: "Vegetable", description: "5 kilos of zucchinis, Grown in Jersey, Morocco, Spain, United Kingdom", deadline: Date.tomorrow, business_id: business4.id)
p18.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'courgettes.jpg')), filename: 'courgettes.jpg', content_type: 'courgettes.png')
p18.save!
p19 = Product.new(name: "Pork", price: 15, category: "Meat & Fish", description: "2 kilos of porc, Reared by our trusted farmers.", deadline: Date.tomorrow, business_id: business4.id)
p19.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'porc.jpg')), filename: 'porc.jpg', content_type: 'porc.png')
p19.save!
p20 = Product.new(name: "Green beans", price: 8, category: "Vegetable", description: "10kilos of green beans. Grown in Egypt, Guatemala, Kenya", deadline: Date.tomorrow, business_id: business4.id)
p20.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'greenbeans.jpg')), filename: 'greenbeans.jpg', content_type: 'greenbeans.png')
p20.save!
p20 = Product.new(name: "Raspberries", price: 8, category: "Fruit", description: "One kilo of delightful raspberries. Grown in Kenya, Morocco, Portugal, South Africa, Spain, United Kingdom", deadline: Date.tomorrow, business_id: business4.id)
p20.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'raspberries.jpg')), filename: 'raspberries.jpg', content_type: 'raspberries.png')
p20.save!
p43 = Product.new(name: "Watermelons", price: 8, category: "Fruit", description: "Five watermelons. 1 of your 5 a day: 80g of Watermelon counts as 1 of your 5 a-day. Aim for at least 5 different portions of fruit and veg a day. Fresh, frozen, dried, canned and juice all count.", deadline: Date.tomorrow, business_id: business4.id)
p43.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'watermelons.png')), filename: 'watermelons.png', content_type: 'watermelons.png')
p43.save!
p44 = Product.new(name: "Camembert", price: 8, category: "Dairy", description: "10 Camemberts. Full fat soft cheese made from pasteurised cow's milk. Take the Camembert out of the fridge about 30min before eating to allow the cheese to come to room temperature and be at its best.", deadline: Date.tomorrow, business_id: business4.id)
p44.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'camembert.png')), filename: 'camembert.png', content_type: 'camembert.png')
p44.save!
p45 = Product.new(name: "Fruit Compote", price: 8, category: "Dairy", description: "Suitable for Vegetarians. Free From Artificial Sweeteners. Free from Colours.", deadline: Date.tomorrow, business_id: business4.id)
p44.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'compotes.png')), filename: 'compotes.png', content_type: 'compotes.png')
p45.save!
p46 = Product.new(name: "Brioche", price: 3, category: "Carbohydrate", description: "Five packets of Brioche. Great with your favourite sweet or savoury fillings. Made with our authentic 'levain' to give its unique taste.", deadline: Date.tomorrow, business_id: business1.id)
p46.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'brioche.png')), filename: 'brioche.png', content_type: 'brioche.png')
p46.save!
p47 = Product.new(name: "Sandwich loaf bread", price: 2, category: "Carbohydrate", description: "Four packets of sandwich loaf bread. Our love of baking runs through generations of our family bakery. Our dedication to taste is a labour of love where we have spent time baking the finest gluten free white loaf which is carefully crafted using a slow and unique bread making technique.", deadline: Date.tomorrow, business_id: business1.id)
p47.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'bread2.png')), filename: 'bread2.png', content_type: 'bread2.png')
p47.save!
p48 = Product.new(name: "Pineapple Juice", price: 5, category: "Drink", description: "Four liters of Pineapple Juice. Made with 100% fruit juice. The secret of our fruity taste… We only select the tastiest Fruit to make sure they are bursting with flavour. We squeeze them in the country they are grown and concentrate the juice by removing the water, keeping all the flavour.", deadline: Date.tomorrow, business_id: business1.id)
p48.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'pineapple-juice.jpg')), filename: 'pineapple-juice.jpg', content_type: 'pineapple-juice.jpg')
p48.save!

# business 5 creation + products
business5 = Business.new(address: "16 London Rd, Elephant and Castle, London SE1 6JZ,", name: "Superway Supermarket")
business5.save!

p21 = Product.new(name: "Yoghurts", price: 15, category: "Dairy", description: "10 yoghurts to eat before tomorrow! Contains: milk.", deadline: Date.tomorrow, business_id: business5.id)
p21.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'yaourts.jpg')), filename: 'yaourts.jpg', content_type: 'yaourts.png')
p21.save!
p22 = Product.new(name: "Strawberries", price: 9, category: "Fruit", description: "5 kilos of strawberries. Wash before use. For best flavour, serve at room temperature.", deadline: Date.tomorrow, business_id: business5.id)
p22.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'fraises.jpg')), filename: 'fraises.jpg', content_type: 'fraises.png')
p22.save!
p23 = Product.new(name: "Potatoes", price: 3, category: "Vegetable", description: "5 kilos of potatoes. Great for boiling. Grown in Cyprus, Egypt, Israel, Jersey, Spain, United Kingdom.", deadline: Date.tomorrow, business_id: business5.id)
p23.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'potatoes.jpg')), filename: 'potatoes.jpg', content_type: 'potatoes.png')
p23.save!
p24 = Product.new(name: "Cheese", price: 15, category: "Dairy", description: "To eat as soon as possible! Suitable for Vegetarians.", deadline: Date.tomorrow, business_id: business5.id)
p24.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'cheese.png')), filename: 'cheese.png', content_type: 'cheese.png')
p24.save!
p25 = Product.new(name: "Tomatoes", price: 5, category: "Vegetable", description: "5 kilos of tomatoes. Full of flavour. Grown in France, Italy, Netherlands, United Kingdom.", deadline: Date.tomorrow, business_id: business5.id)
p25.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'tomatoes.jpg')), filename: 'tomatoes.jpg', content_type: 'tomatoes.png')
p25.save!
p49 = Product.new(name: "Orange Juice", price: 5, category: "Drink", description: "Four liters of Orange Juice. Our exclusive blend of oranges gives a refreshing and balanced orange juice with just the right amount of natural sweetness and acidity with a subtle tang, giving a fresher fruity flavour.", deadline: Date.tomorrow, business_id: business1.id)
p49.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'orange-juice.png')), filename: 'orange-juice.png', content_type: 'orange-juice.png')
p49.save!
p50 = Product.new(name: "Apple Juice", price: 5, category: "Drink", description: "Four liters of Apple Juice. 100% pressed juice.", deadline: Date.tomorrow, business_id: business1.id)
p50.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'apple-juice.png')), filename: 'apple-juice.png', content_type: 'apple-juice.png')
p50.save!
p51 = Product.new(name: "Brioche", price: 3, category: "Carbohydrate", description: "Five packets of Brioche. Great with your favourite sweet or savoury fillings. Made with our authentic 'levain' to give its unique taste.", deadline: Date.tomorrow, business_id: business1.id)
p51.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'brioche.png')), filename: 'brioche.png', content_type: 'brioche.png')
p51.save!
p52 = Product.new(name: "Mangos", price: 9, category: "Fruit", description: "10 mangos. An 80g of mango counts as 1 of your 5 a-day. Aim for at least 5 different portions of fruit or veg a day. Fresh, frozen, dried, canned and juice all count.", deadline: Date.tomorrow, business_id: business5.id)
p52.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'mangos.png')), filename: 'mangos.png', content_type: 'mangos.png')
p52.save!
p53 = Product.new(name: "Oranges", price: 5, category: "Fruit", description: "Ten kilos of oranges. Juicy and refreshing. Grown in Peru, South Africa, Spain, Turkey.", deadline: Date.tomorrow, business_id: business5.id)
p53.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'oranges.png')), filename: 'oranges.png', content_type: 'oranges.png')
p53.save!
p54 = Product.new(name: "Roquefort", price: 3, category: "Dairy", description: "3 packets of Roquefort cheese. Unpasteurised blue cheese made from raw sheep's milk AOP. We are passionate about great tasting food, which is why this Taste the Difference product has been taste tested by a panel of customers, to ensure that we continue to offer you the very best in quality and flavour.", deadline: Date.tomorrow, business_id: business5.id)
p54.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'products', 'roquefort.jpg')), filename: 'roquefort.jpg', content_type: 'roquefort.png')
p54.save!

# seeds for Users // Orders // Purchases

u1 = User.new(email: "aurelie@gmail.com", password: "aurelie@gmail.com", username: "Aurélie", category: "Private person")
u1.save!
o1 = Order.new(user_id: u1.id)
o1.save!
pc1 = Purchase.new(product_id: p21.id, order_id: o1.id)
pc1.save!
pc2 = Purchase.new(product_id: p20.id, order_id: o1.id)
pc2.save!
o1.update!(amount_cents: p20.price + p21.price)

u2 = User.new(email: "guillaume@gmail.com", password: "guillaume@gmail.com", username: "Guillaume", category: "Private person")
u2.save!
o2 = Order.new(user_id: u2.id)
o2.save!
pc3 = Purchase.new(product_id: p18.id, order_id: o2.id)
pc3.save!
pc4 = Purchase.new(product_id: p7.id, order_id: o2.id)
pc4.save!
o2.update!(amount_cents: p18.price + p7.price)

u3 = User.new(email: "the_hunger_project@gmail.com", password: "the_hunger_project@gmail.com", username: "The Hunger Project", category: "Association")
u3.save!
o3 = Order.new(user_id: u3.id)
o3.save!
pc5 = Purchase.new(product_id: p6.id, order_id: o3.id)
pc5.save!
pc6 = Purchase.new(product_id: p9.id, order_id: o3.id)
pc6.save!
o3.update!(amount_cents: p6.price + p9.price)

u4 = User.new(email: "unicef@gmail.com", password: "unicef@gmail.com", username: "Unicef", category: "Association")
u4.save!
o4 = Order.new(user_id: u4.id)
o4.save!
pc7 = Purchase.new(product_id: p24.id, order_id: o4.id)
pc7.save!
pc8 = Purchase.new(product_id: p23.id, order_id: o4.id)
pc8.save!
pc9 = Purchase.new(product_id: p25.id, order_id: o4.id)
pc9.save!
o4.update!(amount_cents: p24.price + p23.price + p25.price)
