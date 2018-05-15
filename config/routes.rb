Rails.application.routes.draw do
  devise_for :users
  resources :forums do
    collection do
      get :search # creates a new path for the searching
    end
    resources :posts do
      resources :comments
    end
  end
  root 'forums#index'
end
