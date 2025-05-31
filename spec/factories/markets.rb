FactoryBot.define do
  factory :market do
    name { Faker::Company.name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip { Faker::Address.zip_code }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
