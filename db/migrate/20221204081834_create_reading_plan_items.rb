class CreateReadingPlanItems < ActiveRecord::Migration[6.1]
  def change
    create_table :reading_plan_items do |t|
      t.references :reading_plan, null: false, foreign_key: true
      t.string :description, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.string :reminder_frequency, null: false

      t.timestamps
    end
  end
end
