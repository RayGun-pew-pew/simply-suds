catagories = ["soap", "shower steamer", "salt scrub",
              "bath bomb", "body butter", "lotion candle",
              "lotion stick", "car diffuser", "soy candle",
              "foaming body oil", "lip balm",]

  User.create!(
    first_name: "April",
    last_name: "Champagne",
    email_address: "business@simplysudsmore.com",
    password: "soap_making8623",
    password_confirmation: "soap_making8623",
  )

  catagories.each do |catagory|
    Catagory.create!(name: catagory)
  end

  Product.create!(
    name: "Bed of Roses",
    description: "",
    price: 800,
    stock: 10,
    sku: "",
    is_active: true,
    catagory_id: 8 
  )

  Product.create!(
    name: "Mahogany Teakwood",
    description: "",
    price: 800,
    stock: 22,
    sku: "",
    is_active: true,
    catagory_id: 8 
  )

  Product.create!(
    name: "Lavender Vanilla",
    description: "",
    price: 800,
    stock: 9,
    sku: "",
    is_active: true,
    catagory_id: 8 
  )

  Product.create!(
    name: "Flower House",
    description: "",
    price: 800,
    stock: 15,
    sku: "",
    is_active: true,
    catagory_id: 7
  )

  Product.create!(
    name: "Clove",
    description: "",
    price: 800,
    stock: 2,
    sku: "",
    is_active: true,
    catagory_id: 7 
  )

  Product.create!(
    name: "Simply Pink",
    description: "",
    price: 1100,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 5
  )

  Product.create!(
    name: "Silken Harvest",
    description: "",
    price: 800,
    stock: 10,
    sku: "",
    is_active: true,
    catagory_id: 5  
  )

  Product.create!(
    name: "Floral Vanilla Dream",
    description: "",
    price: 800,
    stock: 17,
    sku: "",
    is_active: true,
    catagory_id: 5 
  )

  Product.create!(
    name: "Mountain Rain",
    description: "",
    price: 600,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 6
  )

  Product.create!(
    name: "Tobacco Vanilla",
    description: "",
    price: 600,
    stock: 3,
    sku: "",
    is_active: true,
    catagory_id: 6 
  )

  Product.create!(
    name: "Japanese Cherry Blossom",
    description: "",
    price: 800,
    stock: 3,
    sku: "",
    is_active: true,
    catagory_id: 9 
  )

  Product.create!(
    name: "Vetiver Bergamot",
    description: "",
    price: 800,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 9 
  )

  Product.create!(
    name: "Avo",
    description: "",
    price: 800,
    stock: 4,
    sku: "",
    is_active: true,
    catagory_id: 9 
  )

  Product.create!(
    name: "Jasmine Rose",
    description: "",
    price: 1000,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 10 
  )

  Product.create!(
    name: "Rum Pineapple",
    description: "",
    price: 600,
    stock: 11,
    sku: "",
    is_active: true,
    catagory_id: 11 
  )

  Product.create!(
    name: "Mango Peach Pineapple",
    description: "",
    price: 600,
    stock: 32,
    sku: "",
    is_active: true,
    catagory_id: 11 
  )

  Product.create!(
    name: "Kombucha",
    description: "",
    price: 1000,
    stock: 16,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )
  Product.create!(
    name: "Lavender Geranium",
    description: "",
    price: 1000,
    stock: 16,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Honey Oatmeal",
    description: "",
    price: 1000,
    stock: 10,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Pretty in Pink",
    description: "",
    price: 1000,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Flower House",
    description: "",
    price: 1000,
    stock: 10,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Peppermint",
    description: "",
    price: 1000,
    stock: 6,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Blue Vanilla",
    description: "",
    price: 1000,
    stock: 6,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Teakwood",
    description: "",
    price: 1000,
    stock: 2,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Wintergreen",
    description: "",
    price: 700,
    stock: 6,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Burst of Citrus",
    description: "",
    price: 700,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Tangerine",
    description: "",
    price: 700,
    stock: 10,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Pink Grapefruit",
    description: "",
    price: 700,
    stock: 1,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Sandalwood",
    description: "",
    price: 1000,
    stock: 5,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Yooper",
    description: "",
    price: 1000,
    stock: 16,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Lavender Oatmeal",
    description: "",
    price: 1000,
    stock: 15,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Baby Fresh Scent",
    description: "",
    price: 1000,
    stock: 10,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Woodsy",
    description: "",
    price: 1000,
    stock: 8,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Apple Harvest",
    description: "",
    price: 1000,
    stock: 4,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Refreshing Oatmeal",
    description: "",
    price: 1000,
    stock: 4,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Lavender Patchouli - Shea Free",
    description: "",
    price: 1000,
    stock: 16,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )

  Product.create!(
    name: "Simply Suds Baby Soap",
    description: "",
    price: 900,
    stock: 8,
    sku: "",
    is_active: true,
    catagory_id: 1 
  )
