FactoryBot.define do
  factory :host do
    name (Faker::Internet.user_name)
    location (Faker::Address.city)
  end
end
