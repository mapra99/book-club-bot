require 'rails_helper'

RSpec.describe ReadingPlan, type: :model do
  subject(:reading_plan) { build(:reading_plan) }

  describe 'associations' do
    it { is_expected.to belong_to(:book) }
    it { is_expected.to have_many(:reading_plan_items) }
  end
end
