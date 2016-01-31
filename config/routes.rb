Rails.application.routes.draw do
  resources :users
  resources :beers
  root 'index#index'

  get '/login', to: 'login#index'

  get '/register', to: 'login#index'
  post '/register', to: 'login#register'
end
