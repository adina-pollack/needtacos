Rails.application.routes.draw do
  root to: 'neighborhoods#index'
  resources :neighborhoods do
    resources :restaurants, except: [:index] do
      resources :tacos
    end
  end
  resources :restaurants, only: [:index] do
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end
  resources :tacos do
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end

  resources :users
  resource :session
end
