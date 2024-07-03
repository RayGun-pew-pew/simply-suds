FactoryBot.define do
  factory :product do
    name { "MyString" }
    sku { "MyString" }
    price { 1 }
    is_active { false }
    size { 1 }
    size_measurment { "MyString" }
    stock { 1 }
    on_sale { false }
  end
end
