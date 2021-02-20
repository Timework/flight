Rails.application.routes.draw do
  root 'trips#index'
  resources :trips, only: [:index]
  resources :bookings, only: [:show, :new, :create]
end
