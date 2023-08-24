Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # RENTERS
  resources :books, only: [:index, :show] do
    resources :reservations, only: [:create]
    resources :bookmarks, only: [:create] # Bookmarks nested inside books
  end

  namespace :renter do
    resource :profile, only: [:show]
  end
  resources :bookmarks, only: [:destroy]

  # OWNERS
  namespace :owner do
    resource :profile, only: [:show]

    resources :books, only: [:new, :create]


    resources :reservations, only: [] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
