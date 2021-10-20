require 'rails_helper'

RSpec.describe TripDate, type: :model do
  describe 'Associations' do
    it { should belong_to(:trip) }
    it { should have_many(:reservations) }
    it { should have_many(:reservors) }
  end
end
