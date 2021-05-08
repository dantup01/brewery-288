Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :products
      resources :cusomers
      resources :orders

      root to: "users#index"
    end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
