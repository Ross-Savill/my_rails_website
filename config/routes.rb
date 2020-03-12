Rails.application.routes.draw do
  resources :blogs, :works, :qualifications, :homepage_items
  root 'homepage_items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
