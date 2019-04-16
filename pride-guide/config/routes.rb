Rails.application.routes.draw do

  resources :reviews, only: [:create, :edit]
  resources :resources, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  
  get "/", to: "static_pages#home", as: "home"
  get "/about", to: "static_pages#about", as: "about"
  get "/contact", to: "static_pages#contact", as: "contact"
  get "/help", to: "static_pages#help", as: "help"

  get "/register", to: "users#new", as: "register"

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
