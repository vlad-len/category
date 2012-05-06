Catalog::Application.routes.draw do
  devise_for :users
  root :to => "cats#index"
  resources :cats do
    resources :offers
  end
end
