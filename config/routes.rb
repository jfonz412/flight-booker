Rails.application.routes.draw do
  root 'flights#index'
  post '/bookings',  to: 'bookings#create'
  get  '/bookings',  to: 'bookings#new'
  get  '/flights',   to: 'flights#index'
  resources :bookings, only: [:show]
end
