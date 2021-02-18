FactoryBot.define do
  factory :user do
    nickname { Gimei.name }
    email { Faker::Internet.free_email }
    password { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    gender_id { Faker::Number.between(from: 2, to: 4) }
  end
end
