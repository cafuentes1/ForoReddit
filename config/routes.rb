Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users
  resources :forums do
    collection do
      get :search # creates a new path for the searching
    end
    resources :posts do
      resources :comments
    end
  end
  root 'forums#index'
  get 'profile', to: 'users#show'
end
