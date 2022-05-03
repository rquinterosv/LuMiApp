Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  get '/user', to: redirect('/routes')
  resources :routes 
  resources :regions
  resources :countries
  root 'routes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
