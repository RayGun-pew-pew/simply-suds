catagories = ["soap", "lip balm", "bath bomb", "lotion", "shower steamer", "body wash"]

catagories.each do |catagory|
  Catagory.create!(name: catagory)
end

(1..20).each do
  Product.create!(
    name: Faker::Name.name,
    price: Faker::Number.between(from: 1, to: 100),
    is_active: false,
    size: Faker::Number.between(from: 1, to: 10),
    size_measurment: "Oz",
    stock: Faker::Number.between(from: 1, to: 100),
    on_sale: false,
    description: "This is a description",
    catagory: Catagory.first,
  )
end
