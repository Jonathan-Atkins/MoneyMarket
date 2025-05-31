FactoryBot.define do
  factory :attendance do
    association :vendor
    association :market
    date { Faker::Date.between(from: 1.month.ago, to: Date.today) }
  end
end
