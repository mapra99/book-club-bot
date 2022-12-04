class ReadingPlanItem < ApplicationRecord
  REMINDER_FREQUENCIES = %i[
    daily
    weekly
    monthly
  ].freeze

  belongs_to :reading_plan
  has_many :reading_plan_item_reminders, dependent: :destroy

  def next_reminder_date
    last_date = last_reminder.sent_date || start_date

    case reminder_frequency.to_sym
    when :daily
      next_date = last_date + 1.day
    when :weekly
      next_date = last_date + 1.week
    when :monthly
      next_date = last_date + 1.month
    end

    return if next_date > end_date

    next_date
  end

  def last_reminder
    reading_plan_item_reminders.order(sent_date: :desc).first
  end
end
