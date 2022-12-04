class CreateReadingPlanItemReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reading_plan_item_reminders do |t|
      t.references :reading_plan_item, null: false, foreign_key: true
      t.string :message, null: false
      t.datetime :sent_date, null: false

      t.timestamps
    end
  end
end
