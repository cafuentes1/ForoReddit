Rails.application.routes.draw do
  devise_for :users
  resources :forums do
    resources :posts do
      resources :comments
    end
  end
  root 'forums#index'
end
