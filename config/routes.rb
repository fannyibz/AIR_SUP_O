Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :bookings, only: [:index, :create]
  end
  resources :reviews, only: [:create]

  resources :bookings, only: [:destroy]

  get 'dashboard', to: 'pages#dashboard'

end
