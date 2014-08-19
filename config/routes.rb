Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create]
  resources :registration, only: [:new, :create]

  root "sessions#index"
end
