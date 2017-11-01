Rails.application.routes.draw do
  resources :posts
  root to: 'posts#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { omniauth_callbacks: 'auth/callbacks' }
end
