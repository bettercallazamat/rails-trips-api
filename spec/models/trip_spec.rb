require 'rails_helper'

RSpec.describe Trip, type: :model do
  let(:trip) do
    Trip.new(
      title: 'Title',
      description: 'description',
      imageUrl: 'imageUrl',
      tourDetailsText: 'tourDetailsText',
      altitudeDifference: 'altitudeDifference',
      season: 'season',
      distanceByCar: 'distanceByCar',
      trekkingDistance: 'trekkingDistance',
      cost: 'cost'
    )
  end

  it 'is valid with valid attributes' do
    expect(trip).to be_valid
  end

  it 'is not valid without title' do
    trip.title = nil
    expect(trip).to_not be_valid
  end

  it 'is not valid without description' do
    trip.description = nil
    expect(trip).to_not be_valid
  end

  describe 'Associations' do
    it { should have_many(:trip_dates) }
  end
end
