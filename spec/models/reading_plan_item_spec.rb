require 'rails_helper'

RSpec.describe ReadingPlanItem, type: :model do
  subject(:plan_item) { build(:reading_plan_item) }

  describe 'associations' do
    it { is_expected.to belong_to(:reading_plan) }
    it { is_expected.to have_many(:reading_plan_item_reminders) }
  end
end
