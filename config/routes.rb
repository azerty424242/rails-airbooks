Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :books, only: [:index, :show] do
    resources :reservations, only: [:create]
    resources :bookmarks, only: [:create]
  end

  resources :bookmarks, only: [:destroy]


  # RENTERS
  namespace :renter do
    resource :profile, only: [:show]
  end


  # OWNERS
  namespace :owner do
    resource :profile, only: [:show]
    resources :books, only: [:new, :create]

    resources :reservations, only: [] do
      member do   # used for methods that require specific ID
        patch :accept
        patch :refuse
      end
    end
  end
end
