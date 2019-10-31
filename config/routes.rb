Rails.application.routes.draw do
  get 'deaths/index'
  get 'collected_coins/index'
  post 'collected_coins/create'
  post 'deaths/create'

  get 'home/index'
  devise_for :users
  root to: 'home#index'
end