Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :trips, only: [:index]
      resources :reservations, only: [:index, :create]
      resources :users, only: [:show, :create]
      post 'authenticate', to: 'authentication#authenticate'
    end
  end
end
