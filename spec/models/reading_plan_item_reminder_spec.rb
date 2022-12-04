require 'rails_helper'

RSpec.describe ReadingPlanItemReminder, type: :model do
  subject(:reminder) { build(:reading_plan_item_reminder) }

  describe 'associations' do
    it { is_expected.to belong_to(:reading_plan_item) }
  end
end
