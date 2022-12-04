class ReadingPlanReminder
  attr_reader :plan_item

  def initialize(plan_item)
    @plan_item = plan_item
  end

  def send_new_reminder
    reminder = build_reminder
    Slack::WebhookMessager.new.send_message(reminder.message)
    reminder.save!
  end

  private

  # rubocop:disable Layout/LineLength
  def build_reminder
    ReadingPlanItemReminder.new(
      reading_plan_item: plan_item,
      message: "Hey there! Checking in on the #{plan_item.reading_plan.book.name} reading #{plan_item.description} today - We need to finish it by #{plan_item.end_date}!",
      sent_date: Time.zone.now
    )
  end
  # rubocop:enable Layout/LineLength
end
