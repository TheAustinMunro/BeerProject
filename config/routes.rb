Rails.application.routes.draw do
  resources :beers
  resources :beers
  root 'index#index'
end
