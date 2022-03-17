Rails.application.routes.draw do
  resources :orders
  resources :items
  devise_for :users
  root to: "items#index"
  resources :cart, only: [:show, :update]
  resources :jointablecartitem, only: [:create, :update, :destroy]
  resources :charges
  resources :user, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
