FactoryBot.define do
  factory :reading_plan_item do
    association :reading_plan

    description { Faker::Lorem.sentence }

    start = Faker::Date.in_date_period
    start_date { start }
    end_date { Faker::Date.between(from: start, to: start + 30.days) }
    reminder_frequency { ReadingPlanItem::REMINDER_FREQUENCIES.sample }
  end
end
