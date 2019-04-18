Rails.application.routes.draw do
  resources :brands, only: [:index, :show]
  resources :likes, only: [:create, :destroy]
  resources :sneakers
  resources :users, only: [:index, :only, :show, :new, :create, :destroy]

  root 'application#home'
  #post '/likes', to: 'likes#create'

  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: "logout"

  get '/random', to: 'sneakers#random', as: "random_sneaker"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
