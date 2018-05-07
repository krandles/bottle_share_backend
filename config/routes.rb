Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :breweries
      resources :beers
      resources :events
      resources :invitations
      resources :posts
      resources :users

      post "/login", to: 'auth#login'
      post "/current_user", to: 'auth#current'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
