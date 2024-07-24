Rails.application.routes.draw do
  resources :line_items
  resources :orders
  resources :shoppers
  resources :products
  resources :catagories

  get '/dashboard', to: 'dashboard#index'

  
  get '/shop', to: "shop#index"
  get '/home', to: "home#index"
  get '/about', to: "about#index"

  get "/sign_up", to: "users#new"
  post "/sign_up", to: "users#create"

  get '/sign_in', to: "sessions#new"
  post '/sign_in', to: "sessions#create"
  delete '/sign_out', to: "session#destroy"
  
  root "home#index"
end
