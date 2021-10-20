require 'rails_helper'

describe 'Check if user is logged in', type: :request do
  before do
    post '/api/v1/users', params: {
      username: 'johndoe',
      password: 'Password123',
      password_confirmation: 'Password123'
    }

    post '/api/v1/login', params: {
      username: 'johndoe',
      password: 'Password123'
    }
  end

  it 'return user with logged in status as true' do
    data = JSON.parse(response.body)
    expect(data['username']).to eq('johndoe')
  end
end
