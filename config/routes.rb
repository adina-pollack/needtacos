Rails.application.routes.draw do
  resources :neighborhoods do
    resources :restaurants, except: [:index]
  end
  resources :restaurants, only: [:index]
  resources :tacos
end
