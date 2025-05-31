FactoryBot.define do
  factory :vendor do
    name { Faker::Company.name }
    category { Faker::Commerce.department(max: 1) }
    contact_number { Faker::PhoneNumber.phone_number }
    lot_number { rand(1..50) }
    status { :active } 
  end
end
