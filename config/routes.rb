Rails.application.routes.draw do
  get 'visitor/register'
  get 'visitor/reports'
  get 'visitor/settings'
  get 'buildings/show'
  get 'buildings/new'
  get 'buildings/update'
  get 'buildings/create'
  get 'buildings/edit'
  get 'buildings/delete'
  get 'visitor/index'
  get 'buildings/index'
  get 'user/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'user#index'

  resources :buildings
  resources :user
  resources :visitor
end
