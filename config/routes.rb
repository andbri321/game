Rails.application.routes.draw do
  get 'killed_monsters/index'
  get 'deaths/index'
  get 'collected_coins/index'
  post 'collected_coins/create'
  post 'deaths/create'

  get 'home/index'
  devise_for :users
  root to: 'home#index'
end