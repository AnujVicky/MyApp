Rails.application.routes.draw do

  resources :invoices
  root 'invoices#index'
  get 'highest', to: 'invoices#highest',  as: 'highest'

    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'

 end
