FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    price { 1 }
    stock { 1 }
    size { 1 }
    size_measurment { "MyString" }
    sku { "MyString" }
    is_active { false }
    on_sale { false }
    catagory { nil }
  end
end
