Rails.application.routes.draw do
  resources :events
  resources :invitations
  resources :posts
  resources :users

  post "/login", to: 'auth#login'
  post "/current_user", to: 'auth#current'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
