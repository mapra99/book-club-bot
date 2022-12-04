FactoryBot.define do
  factory :book do
    name { Faker::Book.title }
    author { Faker::Book.author }
    site_url { Faker::Internet.url }
  end
end
