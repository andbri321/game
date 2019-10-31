Rails.application.routes.draw do
  get 'collected_coins/index'
  post 'collected_coins/create'

  get 'home/index'
  devise_for :users
  root to: 'home#index'
end