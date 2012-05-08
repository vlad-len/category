Catalog::Application.routes.draw do
  devise_for :admins

  devise_for :users
  root :to => "cats#index"
  resource :admins
  resources :cats do
    resources :offers
  end

  namespace :admin do
    resources :cats do
    end
  end
end
