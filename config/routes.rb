Rails.application.routes.draw do

  root 'homepage_items#index'

  resources :admins
  resources :blogs, :works, :qualifications
  resources :homepage_items, only: [:edit, :update, :index]
  resources :sessions, only: [:new, :create, :destroy]

  get "signup", to: "admins#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
