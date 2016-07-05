Rails.application.routes.draw do
  root to: 'neighborhoods#index'
  resources :neighborhoods do
    resources :restaurants, except: [:index]
  end
  resources :restaurants, only: [:index]
  resources :tacos
  resources :users
  resource :session
end
