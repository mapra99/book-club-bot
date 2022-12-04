class ReadingPlanReminderJob < ApplicationJob
  queue_as :default

  def perform(reading_plan_item_id:)
    plan_item = ReadingPlanItem.find(reading_plan_item_id)
    ReadingPlanReminder.new(plan_item).send_new_reminder

    schedule_next_reminder(plan_item)
  end

  private

  def schedule_next_reminder(plan_item)
    next_date = plan_item.next_reminder_date
    return if next_date.blank?

    self.class.set(wait_until: next_date).perform_later(reading_plan_item_id: plan_item.id)
  end
end
