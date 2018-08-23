# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'visitor/reports'
  get 'visitor/settings'

  root 'visitors#index'

  resources :visitors
  resources :buildings
  resources :users
end
