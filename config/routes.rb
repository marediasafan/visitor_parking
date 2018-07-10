Rails.application.routes.draw do
  get 'visitor/index'
  get 'building/index'
  get 'user/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'user#index'
end
