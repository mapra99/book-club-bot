# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_04_151655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "name", null: false
    t.string "author", null: false
    t.string "site_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reading_plan_item_reminders", force: :cascade do |t|
    t.bigint "reading_plan_item_id", null: false
    t.string "message", null: false
    t.datetime "sent_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reading_plan_item_id"], name: "index_reading_plan_item_reminders_on_reading_plan_item_id"
  end

  create_table "reading_plan_items", force: :cascade do |t|
    t.bigint "reading_plan_id", null: false
    t.string "description", null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.string "reminder_frequency", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reading_plan_id"], name: "index_reading_plan_items_on_reading_plan_id"
  end

  create_table "reading_plans", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_reading_plans_on_book_id"
  end

  add_foreign_key "reading_plan_item_reminders", "reading_plan_items"
  add_foreign_key "reading_plan_items", "reading_plans"
  add_foreign_key "reading_plans", "books"
end
