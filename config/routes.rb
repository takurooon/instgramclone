Rails.application.routes.draw do

  root to: 'pictures#index'

  resources :pictures
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
end
