Rails.application.routes.draw do
  resources :stocks
  resources :items
  resources :locations

  root 'items#index'

end
