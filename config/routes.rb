Rails.application.routes.draw do
  devise_for :users
  root to: "reservations#index"
  resources :reservations, only: [:index, :new, :create]
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
end
