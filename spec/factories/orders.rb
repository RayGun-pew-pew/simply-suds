FactoryBot.define do
  factory :order do
    shopper { nil }
    purchased { false }
    shipped { false }
    date_shipped { "2024-07-05" }
  end
end
