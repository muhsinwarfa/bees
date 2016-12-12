Rails.application.routes.draw do
  resources :vehicles
  resources :products
  resources :orders
  resources :customers
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  # get 'products/:id', to: 'products#show', :as => :products
  devise_for :users
  # devise_scope :user do
  #   get 'login', to: "orders#index"
  # end
  resources :users
  get 'showall' => 'orders#showall', as: :showall
end

