require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Associations' do
    it { should belong_to(:reservor) }
    it { should belong_to(:reserved_trip_date) }
  end
end
