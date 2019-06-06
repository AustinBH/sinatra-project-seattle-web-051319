u1 = User.create(name: "jack")
u2 = User.create(name: "sarah")
u3 =

r1 = Restaurant.create(name: "mcdonalds", rating: "2", address: "Seattle")
r2 = Restaurant.create(name: "potbelly", rating: "3", address: "Downtown")

TryRestaurant.create(user_id: u1.id, restaurant_id: r1.id)
TryRestaurant.create(user_id: u1.id, restaurant_id: r2.id)
