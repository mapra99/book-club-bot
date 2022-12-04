class ReadingPlan < ApplicationRecord
  belongs_to :book
  has_many :reading_plan_items, dependent: :destroy
end
