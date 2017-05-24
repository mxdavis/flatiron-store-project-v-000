10.times do 
  Item.create(
    title: Faker::Commerce.product_name, 
    inventory: Faker::Number.number(2), 
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

10.times do 
  User.create(
    email: Faker::Internet.email, 
    password: SecureRandom.hex
  )
  Category.create(title: Faker::Commerce.department)
end

10.times do
  LineItem.create(
    cart_id: rand(1..10),
    item_id: rand(1..10),
    quantity: rand(1..10)
  )
end
