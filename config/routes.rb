Rails.application.routes.draw do
  root to: 'neighborhoods#index'
  resources :neighborhoods , except: [:destroy] do
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
  # NHO: what's the motivation to move this as a seperate route?
  # This might cause some problems with multiple routes mapping to the same controller action
  resources :tacos do
    member do # NHO: can move these routes under the nested resource
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end

  resources :users
  resource :session
end
