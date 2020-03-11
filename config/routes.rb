Rails.application.routes.draw do
  get 'qualifications/new'
  get 'qualifications/create'
  get 'qualifications/edit'
  get 'qualifications/update'
  get 'qualifications/delete'
  get 'works/new'
  get 'works/create'
  get 'works/edit'
  get 'works/update'
  get 'works/delete'
  get 'homepage_items/index'
  get 'homepage_items/new'
  get 'homepage_items/edit'
  get 'homepage_items/create'
  get 'homepage_items/delete'
  get 'homepage_items/update'
  resources :blogs, :works, :qualifications

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
