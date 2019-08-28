Rails.application.routes.draw do
  get 'deals/create'
  devise_for :users
  root to: 'offers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :offers, except: [ :edit, :update ]

  namespace :user do
    resources :offers
  end


end
