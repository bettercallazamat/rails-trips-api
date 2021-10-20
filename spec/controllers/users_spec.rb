require 'rails_helper'

describe 'create', type: :request do
  before do
    post '/api/v1/users', params: {
      username: 'johndoe',
      password: 'Password123',
      password_confirmation: 'Password123'
    }
  end

  it 'return info of created user' do
    data = JSON.parse(response.body)
    expect(data['username']).to eq('johndoe')
  end
end

describe 'show', type: :request do
  before do
    # post '/api/v1/users', params: {
    #   username: 'johndoe',
    #   password: 'Password123',
    #   password_confirmation: 'Password123'
    # }
    User.create(
      username: 'sarahdoe',
      password: 'Password123',
      password_confirmation: 'Password123'
    )
  end

  it 'returns error without auth_token' do
    get '/api/v1/users/1'
    data = JSON.parse(response.body)
    expect(data['error']).to eq('Not Authorized')
  end
end
