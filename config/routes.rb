Rails.application.routes.draw do
  get 'building/new'
  get 'building/update'
  get 'building/create'
  get 'building/edit'
  get 'visitor/index'
  get 'building/index'
  get 'user/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'user#index'

  resources :building
end
