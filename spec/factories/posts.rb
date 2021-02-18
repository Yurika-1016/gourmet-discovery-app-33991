FactoryBot.define do
  factory :post do
    genre_id { Faker::Number.between(from: 2, to: 13) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    age_id { Faker::Number.between(from: 2, to: 10) }
    address { Gimei.address.kanji }
    text { Faker::Lorem.sentence }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
