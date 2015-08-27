Category.create!([
  {name: "All", category_id: nil},
  {name: "Meat/Fish/Eggs", category_id: 1},
  {name: "Milk products", category_id: 1},
  {name: "Milk", category_id: 3},
  {name: "Cultured milk product", category_id: 3},
  {name: "Cheese", category_id: 3},
  {name: "Farmer cheese", category_id: 3},
  {name: "Meat", category_id: 2},
  {name: "Poultry meat", category_id: 2},
  {name: "Fish", category_id: 2},
  {name: "Eggs", category_id: 2},
  {name: "Beverages", category_id: 1},
  {name: "Non-alcohol beverages", category_id: 12},
  {name: "Spirits", category_id: 12},
  {name: "Wines", category_id: 12},
  {name: "Low-alcohol", category_id: 12},
  {name: "Greengrocery", category_id: 1},
  {name: "Cereals", category_id: 1}
])
Producer.create!([
  {name: "Rainford"},
  {name: "Zlahoda"},
  {name: "Baltimor"}
])
Retailer.create!([
  {name: "ATB Marcet"},
  {name: "Silpo"},
  {name: "Varus"}
])

Product.create!([
  {name: "Milk, 1 l", price: 19.0, count: 10, category_id: 4, producer_id: 2, retailer_id: 1},
  {name: "Tinned meat", price: 17.5, count: 10, category_id: 1, producer_id: 3, retailer_id: 3},
  {name: "Strawberry milk, 1 l",   price: 18.2, count: 10, category_id: 4, producer_id: 2, retailer_id: 2},
  {name: "Salt, 1 kg", price: 12.0, count: 100, category_id: 1, producer_id: nil, retailer_id: 3},
  {name: "Sparkling water Bonaqua, 5 l", price: 23.0, count: 15, category_id: 15, producer_id: 1, retailer_id: 1},
  {name: "Eggs",       price: 250.0, count: 3, category_id: 1, producer_id: nil, retailer_id: 1},
  {name: "Onions, 1 kg",  price: 5.6, count: 24, category_id: 17, producer_id: nil, retailer_id: 2},
  {name: "Potatoes, 1 kg",      price: 4.56, count: 120, category_id: 17, producer_id: nil, retailer_id: 2},
  {name: "Cereal",        price: 11.45, count: 15, category_id: 18, producer_id: 1, retailer_id: 1},
  {name: "Cerael extra",         price: 12.5, count: 15, category_id: 18, producer_id: 1, retailer_id: 1},
  {name: "Rice 0,5 kg",           price: 10.5, count: 15, category_id: 18, producer_id: 2, retailer_id: 3},
  {name: "Rice, 1 kg",   price: 10.4, count: 15, category_id: 18, producer_id: 1, retailer_id: 1},
  {name: "Apples, 1 kg",  price: 10.3, count: 15, category_id: 18, producer_id: 3, retailer_id: 2},
  {name: "Lemons, 1 kg",    price: 15.2, count: 15, category_id: 18, producer_id: 3, retailer_id: 2},
  {name: "Bananas, 1 kg",      price: 10.1, count: 15, category_id: 18, producer_id: 2, retailer_id: 1}
])

user = User.new
user.email = 'admin@example.com'
user.role = 'admin'
user.password = 'password'
user.password_confirmation = 'password'
user.skip_confirmation_notification!
user.confirmed_at = Time.now.to_formatted_s(:db)
user.save!

user = User.new
user.email = 'customer@example.com'
user.role = 'user'
user.password = 'password'
user.password_confirmation = 'password'
user.skip_confirmation_notification!
user.confirmed_at = Time.now.to_formatted_s(:db)
user.save!
