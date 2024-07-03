(1..20).each do
  Product.create!(
    name: Faker::Name.name,
    price: Faker::Number.between(from: 1, to: 100),
    is_active: false,
    size: Faker::Number.between(from: 1, to: 10),
    size_measurment: "Oz",
    stock: Faker::Number.between(from: 1, to: 100),
    on_sale: false
  )
end
