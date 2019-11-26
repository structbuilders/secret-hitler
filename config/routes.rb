Rails.application.routes.draw do
  # BEFORE RELEASE, COMMENT BELOW
  resources :users
  resources :games
  get '/', to: 'secret_hitler#show'
  get '/game/:name', to: 'secret_hitler#game'
  get '/signup', to: 'secret_hitler#signup'
  post '/signup', to: 'secret_hitler#signup_post'
  get '/login', to: 'secret_hitler#login'
  post '/login', to: 'secret_hitler#login'
  get '/replay/:name(.:format)', to: 'secret_hitler#replay'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
