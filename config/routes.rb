Rails.application.routes.draw do
  devise_for :users
  get 'reservations/index'
  root to: "reservations#index"
end
