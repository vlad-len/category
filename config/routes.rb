Catalog::Application.routes.draw do
  devise_for :admins

  devise_for :users
  root :to => "categories#index"
  resource :admins
  resources :categories do
    resources :offers
  end
  namespace :admin do
    resources :offers
  end

  namespace :admin do
    resources :categories do
      resources :offers do
      end
      end
  end
  end
