Rails.application.routes.draw do
  devise_for :users
  root to: 'offers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :offers, except: [ :edit, :update ] do
    resources :deals, only: :create
  end

  resources :reviews, only: [:new, :create]

  namespace :user do
    resources :offers
  end


end
