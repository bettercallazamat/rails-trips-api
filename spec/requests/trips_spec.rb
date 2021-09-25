require 'rails_helper'

describe 'Check if trips are received', type: :request do
  before do
    Trip.create(
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
    get '/api/v1/trips'
  end

  it 'return trips with 1st trip name "Title"' do
    data = JSON.parse(response.body)
    expect(data[0]['title']).to eq('Title')
  end
end