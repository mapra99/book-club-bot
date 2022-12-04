require 'rails_helper'

RSpec.describe Book, type: :model do
  subject(:book) { build(:book) }

  describe 'associations' do
    it { is_expected.to have_many(:reading_plans) }
  end
end
