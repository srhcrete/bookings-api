FactoryBot.define do
  factory :band do
    name (Faker::RockBand.name)
    location (Faker::Address.city)
  end
end
