Rails.application.routes.draw do
  resources :line_items
  resources :orders
  resources :products
  resources :catagories

  get '/sign_in', to: "sessions#new"
  post '/sign_in', to: "sessions#create"
  delete '/sign_out', to: "session#destroy"

  get '/shop', to: "main#shop"
  get '/about', to: "main#about"
  get '/success', to: "orders#success"
  
  root "main#index"
end
