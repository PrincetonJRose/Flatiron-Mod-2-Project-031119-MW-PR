Rails.application.routes.draw do
  resources :users
  resources :resources
  
  get "/register", to: "users#new", as: "register"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
