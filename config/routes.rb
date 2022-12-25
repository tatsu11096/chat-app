Rails.application.routes.draw do


  
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  


