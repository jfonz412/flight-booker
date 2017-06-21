Rails.application.routes.draw do
  root 'flights#index'
  get  '/bookings',  to: 'bookings#new'
  get  '/flights',   to: 'flights#index'
end
