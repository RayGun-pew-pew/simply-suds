Rails.application.routes.draw do
  resources :products
  resources :catagories
  get 'product_catagory/index'
  get 'product_catagory/new'
  get 'product_catagory/create'
  get 'product_catagory/show'
  get 'product_catagory/update'
  get 'product_catagory/delete'
  get 'product_catagory/destroy'
  resources :users
  get '/shop', to: "shop#index"
  get '/home', to: "home#index"
  get '/about', to: "about#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
