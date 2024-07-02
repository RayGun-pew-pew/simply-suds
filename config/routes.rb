Rails.application.routes.draw do
  resources :users
  get '/shop', to: "shop#index"
  get '/home', to: "home#index"
  get '/about', to: "about#index"
  resources :users, only: [:create, :show]
  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
