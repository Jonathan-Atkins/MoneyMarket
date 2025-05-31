require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'associations' do
    it { should belong_to(:market) }
    it { should belong_to(:vendor) }
  end

  describe 'validations' do
    subject do
      FactoryBot.create(:attendance) 
    end

    it {
      is_expected.to validate_uniqueness_of(:vendor_id)
        .scoped_to(:market_id, :date)
        .with_message("has already been marked present for this market on that date")
    }
  end
end
