Rails.application.routes.draw do

  resources :cart_commodities
  resource :cart, only: %w(show edit update)

  devise_for :users

  resources :commodities, only: %w(show)

  namespace :admin do
    resources :commodities
    resources :users,only: %w(index show edit update delete)
  end

  root to: 'home#index'
end

