Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ingredients, only: :index
  resources :formulations, only: :index
  resource :order, only: :create
end
