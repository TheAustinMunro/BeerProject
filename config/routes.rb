Rails.application.routes.draw do
  resources :users
  resources :beers
  resources :beers
  root 'index#index'
end
