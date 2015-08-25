F1 = Food.create(
      name: "Spagetti bolognese",
      description: "Warm yummy spagetti to increase your life span!",
      price: 1500 )

F2 = Food.create(
      name: "Steaks",
      description: "Nice mix of african specials and barbecue sauce",
      price: 750 )

F3 = Food.create(name: "Lobsters",
      description: "Crispy sea food delicacy to make your holiday",
      price: 1200 )

C1 = Category.create(
    title: "Entree",
    description: "Home made food ready to eat")

C2 = Category.create(
    title: "Desserts",
    description: "Finger-licking desserts made from our great family recipe")

U1 = User.create(
    first_name: "Damilola",
    last_name: "Roberts",
    email: "dr@yahoo.com",
    password: "whatever",
    password_confirmation: "whatever"
  )
U3 = User.create(
    first_name: "Adenike",
    last_name: "Roberts",
    email: "adenike@yahoo.com",
    password: "whatever",
    password_confirmation: "whatever",
    role: "admin"
  )

U2 = User.create(
    first_name: "Jeff",
    last_name: "Roberts",
    email: "jr@yahoo.com",
    password: "whatever",
    password_confirmation: "whatever"
  )

O1 = Order.create(Status: "Completed", user_id: U1.id)
O2 = Order.create(Status: "Cancelled", user_id: U1.id)
O3 = Order.create(Status: "Processing", user_id: U1.id)
O4 = Order.create(Status: "Processing", user_id: U1.id)


Order_Item1 = OrderItem.create(quantity: 3, food_id: F1.id, order_id: 1)
Order_Item2 = OrderItem.create(quantity: 2, food_id: F2.id, order_id: 1)
Order_Item3 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 1)
Order_Item4 = OrderItem.create(quantity: 4, food_id: F3.id, order_id: 2)
Order_Item5 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 2)
Order_Item6 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 3)
Order_Item7 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 3)
Order_Item8 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 3)
Order_Item9 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 4)
Order_Item10 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 4)
Order_Item11 = OrderItem.create(quantity: 5, food_id: F3.id, order_id: 4)


C1.foods << F1
C2.foods << F3

Comment1 = Comment.create(comment: "Best food ever", food_id: F1.id, user_id: U1.id)
Comment2 = Comment.create(comment: "I love it!!", food_id: F1.id, user_id: U2.id)

