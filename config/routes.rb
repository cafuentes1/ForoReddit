Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  match '/signup', to: 'users#new', via: 'get'

  root 'welcome#index'
end
