Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings'}
  resources :orders
  resources :addresses
  resources :users
  resources :roles
  resources :plannings
  resources :products
  resources :categories
  resources :weeks
  resources :bakeries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
