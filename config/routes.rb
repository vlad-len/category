Catalog::Application.routes.draw do
  devise_for :admins

  devise_for :users
  root :to => "categories#index"
  resource :admins
  resources :categories do
    resources :posts do
    end
  end

  resources :contacts

  resources :posts
  namespace :admin do
    resources :posts
  end

  namespace :admin do
  root :to => "categories#index"
    resources :categories do
      resources :posts do
      end
      end
  end
  end
