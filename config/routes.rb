Rails.application.routes.draw do

  resources :forums do
    put :subscribe, on: :member
    end
  resources :posts do
    resources :comments do
      member {post :vote}
    end
    member {post :vote}
    put :favorite, on: :member
  end

  resources :users

  root 'forums#index'

  #devise_for :users, controllers: { registrations: 'registrations'}

  devise_for :users, skip: [:sessions, :registrations]

  devise_scope :user do
    # sessions
    get    'login',  to: 'devise/sessions#new',     as: :new_user_session
    post   'login',  to: 'devise/sessions#create',  as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    # registrations
    put    '/account',  to: 'devise/registrations#update'
    delete '/account',  to: 'devise/registrations#destroy'
    post   '/account',  to: 'devise/registrations#create'
    get    '/register', to: 'devise/registrations#new',    as: :new_user_registration
    get    '/account',  to: 'devise/registrations#edit',   as: :edit_user_registration
    patch  '/account',  to: 'devise/registrations#update', as: :user_registration
    get    '/account/cancel', to: 'devise/registrations#cancel', as: :cancel_user_registration# passwords
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
