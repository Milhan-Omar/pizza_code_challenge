
# Create some restaurants
restaurant1 = Restaurant.create(name: "Pizza Hut", address: Faker::Address.full_address)
restaurant2 = Restaurant.create(name: "Papa John's", address: Faker::Address.full_address)
restaurant3 = Restaurant.create(name: "Domino's", address: Faker::Address.full_address)

# Create some pizzas
pizza1 = Pizza.create(name: "Pepperoni", ingredients: "Pepperoni, cheese, tomato sauce")
pizza2 = Pizza.create(name: "Margherita", ingredients: "Fresh mozzarella cheese, fresh basil leaves, tomato sauce, olive oil")
pizza3 = Pizza.create(name: "Supreme", ingredients:"Tomato sauce, mozzarella cheese, pepperoni, sausage, green peppers, onions, mushrooms, black olives")

# Create some restaurant pizzas
RestaurantPizza.create(price: 13, pizza_id: pizza1.id,  restaurant_id: restaurant1.id)
RestaurantPizza.create(price: 7, pizza_id: pizza2.id, restaurant_id: restaurant1.id) 
RestaurantPizza.create(price: 12, pizza_id: pizza2.id, restaurant_id: restaurant2.id)
RestaurantPizza.create(price: 15, pizza_id: pizza3.id, restaurant_id: restaurant2.id)
RestaurantPizza.create(price: 25, pizza_id: pizza1.id, restaurant_id: restaurant3.id)
RestaurantPizza.create(price: 10, pizza_id: pizza3.id, restaurant_id: restaurant3.id)
