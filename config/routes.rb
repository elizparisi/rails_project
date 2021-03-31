Rails.application.routes.draw do

  root to: 'static#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :comments
  resources :users
  resources :recommendations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
