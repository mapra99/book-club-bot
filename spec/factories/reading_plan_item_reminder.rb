FactoryBot.define do
  factory :reading_plan_item_reminder do
    association :reading_plan_item

    message { Faker::Lorem.paragraph }
    sent_date { Faker::Date.between(from: Time.zone.today, to: Time.zone.today + 30.days) }
  end
end
