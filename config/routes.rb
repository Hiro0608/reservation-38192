Rails.application.routes.draw do
  root to: "reservations#index"
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  get 'reservations/index'
end
