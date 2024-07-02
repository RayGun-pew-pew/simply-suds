FactoryBot.define do
  factory :user do
    first_name { "first_name" }
    last_name { "last_name" }
    sequence(:email_address) { |n| "test+#{n}@test.com" }
    password { "password" }
    password_confirmation { "password" }
    end
end
