Rails.application.routes.draw do

  root to: "homes#index"
  
  get "about",to: "abouts#index"
  get "contact", to: "contacts#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get "signup",to: "users#new"
  get "detail",to: "users#show"
  
  get 'rankings/place', to: 'places#rank'
  
  resources :users, only: [:new, :create, :show]
  
  resources :reports, only: [:new, :create, :destroy]
  resources :places, only: [:show, :index, :create]
  
end
