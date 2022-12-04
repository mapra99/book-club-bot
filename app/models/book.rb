class Book < ApplicationRecord
  has_many :reading_plans, dependent: :nullify
end
