Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  resources :records

  resources :product_types
  resources :products

  namespace :api, :defaults => { :format => :json } do
    resources :records
  end

  resources :recipes
end
