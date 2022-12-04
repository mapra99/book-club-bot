class CreateReadingPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :reading_plans do |t|
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
