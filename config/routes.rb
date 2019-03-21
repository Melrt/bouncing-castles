Rails.application.routes.draw do
  get 'rentals/new'
  get 'rentals/create'
  root to: 'pages#home'
  devise_for :users

  resource :profile, only: [:show, :update]

  #controllerS en tant que player
  resources :castles, only: [:index, :show] do
    resources :rentals, only: [:new, :create]
  end

  resources :rentals, only: [:index]

  # controller en tant que renter

  namespace :renter do
    resource :dashboard, only: [:show]
  #=> par defaut il n'y a qu'un seul dashboard par 'renter'
  #=> donc : singulier, pas d'index et pas d'id par dashboard
    resources :castles, only: [:new, :create]
    resources :rentals, only: [] do
      member do
        patch :accept
        patch :deny
      end
    end
  end
end
