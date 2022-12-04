class ReadingPlanItem < ApplicationRecord
  REMINDER_FREQUENCIES = %i[
    daily
    weekly
    monthly
  ].freeze

  belongs_to :reading_plan
end
