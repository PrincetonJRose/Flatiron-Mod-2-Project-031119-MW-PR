Rails.application.routes.draw do

  resources :reviews, only: [:create, :edit]
  resources :resources, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :posts, only: [:create]
  resources :comments, only: [:create]
  
  get "/", to: "static_pages#login", as: "login"
    post "/", to: "sessions#create"
    delete "/", to: "sessions#destroy", as: "logout"

  get "/about", to: "static_pages#about", as: "about"
  get "/contact", to: "static_pages#contact", as: "contact"
  get "/help", to: "static_pages#help", as: "help"
  get "/home", to: "static_pages#home", as: "home"

  get "/register", to: "users#new", as: "register"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
