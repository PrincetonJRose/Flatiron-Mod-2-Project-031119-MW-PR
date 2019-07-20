Rails.application.routes.draw do

  resources :reviews, only: [:create, :edit, :destroy]
  resources :resources, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :posts, only: [:create, :update, :edit, :destroy] do
    resources :likes, only: [:create, :destroy] 
  end

  resources :comments, only: [:create]

  resources :users do
    patch :toggle_status
  end

  get "/", to: "static_pages#login", as: "login"
  post "/", to: "sessions#create"
  delete "/", to: "sessions#destroy", as: "logout"

  get "/about", to: "static_pages#about", as: "about"
  get "/contact", to: "static_pages#contact", as: "contact"
  get "/help", to: "static_pages#help", as: "help"
  get "/home", to: "static_pages#home", as: "home"
  get "/glossary", to:"static_pages#glossary", as: "glossary"

  get "/register", to: "users#new", as: "register"
  post "/add/:id", to: "friends#add", as: "add_friend"
  delete "/remove/:id", to: "friends#remove", as: "remove_friend"

  get "/search", to: "application#search", as: "search"
  delete "posts/:id", to: "posts#destroy", as: "destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
