Rails.application.routes.draw do
  resources :genders
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
  get "/", to: "application#login", as: "/login"
  get "/login", to: "application#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
