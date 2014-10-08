Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create]
  resources :registration, only: [:new, :create]
  resources :rants, only: [:new, :create, :destroy]

  resources :users, only: [:edit, :update] do
    resources :followers, only: [:create, :index]
  end

  get "/logout", to: "sessions#destroy", as: :logout

  root "rants#index"
end
