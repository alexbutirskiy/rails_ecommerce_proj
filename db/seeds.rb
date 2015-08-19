Category.create!([
  {name: "Все", category_id: nil},
  {name: "Мясо/Рыба/Яйца", category_id: 1},
  {name: "Молочная продукция", category_id: 1},
  {name: "Молоко", category_id: 3},
  {name: "Кисломолочные продукты", category_id: 3},
  {name: "Сыры", category_id: 3},
  {name: "Творог", category_id: 3},
  {name: "Мясо", category_id: 2},
  {name: "Птица", category_id: 2},
  {name: "Рыба", category_id: 2},
  {name: "Яйца", category_id: 2},
  {name: "Напитки", category_id: 1},
  {name: "Безалкогольные", category_id: 12},
  {name: "Ликёроводочные изделия", category_id: 12},
  {name: "Вина", category_id: 12},
  {name: "Слабоалкогольные", category_id: 12},
  {name: "Овощи/фрукты", category_id: 1},
  {name: "Крупы", category_id: 1}
])
Producer.create!([
  {name: "Rainford"},
  {name: "Злагода"},
  {name: "Балтимор"}
])
Retailer.create!([
  {name: "АТБ Маркет"},
  {name: "Сильпо"},
  {name: "Варус"}
])

Product.create!([
  {name: "Молоко детское 1л", price: 19.0, count: 10, category_id: 4, producer_id: 2, retailer_id: 1},
  {name: "Завтрак туриста", price: 17.5, count: 10, category_id: 1, producer_id: 3, retailer_id: 3},
  {name: "Молоко, 1л.", price: 18.2, count: 10, category_id: 4, producer_id: 2, retailer_id: 2},
  {name: "Соль повареная 1кг", price: 12.0, count: 100, category_id: 1, producer_id: nil, retailer_id: 3},
  {name: "Вода Bonaqua 5л", price: 23.0, count: 15, category_id: 15, producer_id: 1, retailer_id: 1},
  {name: "Валенки", price: 250.0, count: 3, category_id: 1, producer_id: nil, retailer_id: 1},
  {name: "Лук репчатый", price: 5.6, count: 24, category_id: 17, producer_id: nil, retailer_id: 2},
  {name: "Картошка", price: 4.56, count: 120, category_id: 17, producer_id: nil, retailer_id: 2},
  {name: "Гречка", price: 10.5, count: 15, category_id: 1, producer_id: 1, retailer_id: 1}
])
User.create!([
  {email: "admin@example.com", role: "admin", password: "$2a$10$L6TejhR6SQsTCJ/riMR0AOYrHxKOnoLaGvRHr8LAEbHAmKiM/fs7K", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-08-11 12:46:02", last_sign_in_at: "2015-08-11 12:37:33", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
])
