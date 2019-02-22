Rails.application.routes.draw do
  
  get 'homes/index'

  root to: "toppages#index"
  
  
end
