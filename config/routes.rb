Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resource :profile, only: [:show]

  #controllerS en tant que player
  resources :bouncing_castles, only: [:index, :show] do
    resources :rentals, only: [:new, :create]
  end

  resources :rentals, only: [:index]

  # controller en tant que renter

  namespace :renter do
    resource :dashboard, only: [:show]
  #=> par defaut il n'y a qu'un seul dashboard par 'renter'
  #=> donc : singulier, pas d'index et pas d'id par dashboard
    resources :bouncing_castles, only: [:new, :create]
    resources :rentals, only: [] do
      member do
        patch :accept
        patch :deny
      end
    end
  end
end
