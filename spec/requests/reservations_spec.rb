require 'rails_helper'

describe 'create', type: :request do
  before do
    User.create(
      username: 'johndoe',
      password: 'Password123',
      password_confirmation: 'Password123'
    )
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
    TripDate.create(
      trip_id: 1,
      date: '01.10.2021'
    )
    post '/api/v1/login', params: {
      username: 'johndoe',
      password: 'Password123'
    }
    token_data = JSON.parse(response.body)
    token = token_data['auth_token']
    headers = { Authorization: token }
    params = { reservor_id: 1, reserved_trip_date_id: 1}
    post '/api/v1/reservations', params: params, headers: headers
  end

  it 'return info of created user' do
    data = JSON.parse(response.body)
    expect(data['id']).to eq(1)
  end
end
