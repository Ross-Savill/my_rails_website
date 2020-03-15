Rails.application.routes.draw do
  resources :admins
  resources :blogs, :works, :qualifications
  resources :homepage_items, only: [:edit, :update, :index]
  root 'homepage_items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
