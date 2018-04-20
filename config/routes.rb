Rails.application.routes.draw do
  devise_for :users
  resources :forums
  resources :posts do
    resources :comments
  end
  root 'posts#index'
end
