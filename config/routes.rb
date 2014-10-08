Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create]
  resources :registration, only: [:new, :create]
  resources :users, only: [:edit, :update]
  resources :rants, only: [:new, :create, :destroy]

  get "/logout", to: "sessions#destroy", as: :logout

  root "rants#index"
end
