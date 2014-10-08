Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create]
  resources :registration, only: [:new, :create]

  get "/logout", to: "sessions#destroy", as: :logout

  root "rants#index"
end
