Rails.application.routes.draw do
  resources :brands
  resources :likes
  resources :sneakers
  resources :users

  root 'application#home'
  # post '/likes', to: 'likes#create'
  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: "logout"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
