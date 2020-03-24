Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :days do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
