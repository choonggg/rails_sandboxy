Rails.application.routes.draw do
  root to: 'pages#index'

  resources :records

  resources :product_types
  resources :products
end
