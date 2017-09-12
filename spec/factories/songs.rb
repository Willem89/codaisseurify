FactoryGirl.define do
  factory :song do
    title  { Faker::Lorem.word }
    album  { Faker::Lorem.word }
    video_url { Faker::Lorem.word }
  end
end
