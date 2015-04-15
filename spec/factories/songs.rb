FactoryGirl.define do
  factory :song do
    title { Faker::Lorem.sentence(4) }
    lyrics { Faker::Lorem.paragraph(1) }
  end
end
