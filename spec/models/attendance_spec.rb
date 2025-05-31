require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'associations' do
    it { should belong_to(:market) }
    it { should belong_to(:vendor) }
  end

  describe 'validations' do
    it {
      should validate_uniqueness_of(:vendor_id)
        .scoped_to(:market_id, :date)
    }
  end
end
