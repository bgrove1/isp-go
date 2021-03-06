Rails.application.routes.draw do


  root :to => 'public#index'

  get 'show/:permalink', :to => 'public#show'

  resources :marketing_managers
  resources :territories
  resources :stores

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end

  resources :isp_shifts do
    member do
      get :delete
    end
  end

  resources :in_store_promoters do
    member do
      get :delete
    end
  end

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end

  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/escape_output'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
