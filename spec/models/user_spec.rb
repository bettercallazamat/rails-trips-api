require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(username: 'mickdoe', password: 'Password123', password_confirmation: 'Password123') }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid with a password less than 6 characters' do
    user.password = 'pass'
    user.password_confirmation = 'pass'
    expect(user).to_not be_valid
  end

  it 'is not valid with a password less than 6 characters' do
    user.password = 'pass'
    user.password_confirmation = 'pass'
    expect(user).to_not be_valid
  end

  it 'is not valid without a digit' do
    user.password = 'thepassword'
    user.password_confirmation = 'thepassword'
    expect(user).to_not be_valid
  end

  it 'is not valid without an uppercase character' do
    user.password = 'thepassword1'
    user.password_confirmation = 'thepassword1'
    expect(user).to_not be_valid
  end

  it 'is not valid without an lowercase character' do
    user.password = 'THEPASSWORD1'
    user.password_confirmation = 'THEPASSWORD1'
    expect(user).to_not be_valid
  end

  describe 'Associations' do
    it { should have_many(:reservations) }
    it { should have_many(:reserved_trip_dates) }
  end
end
