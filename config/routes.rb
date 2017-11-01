Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: 'users#index'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
