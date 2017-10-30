Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: 'users#index'
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'
end
