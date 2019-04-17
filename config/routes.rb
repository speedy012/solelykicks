Rails.application.routes.draw do
  resources :brands
  resources :likes
  resources :sneakers
  resources :users

  post '/likes', to: 'likes#create'
  get '/login', to: 'users#login', as: "login"
  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout', as: "logout"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
