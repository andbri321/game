Rails.application.routes.draw do
  resources :killed_monsters,:deaths,:collected_coins,
            only: [:index,:create]

  resources :home,only: [:index]

  devise_for :users
  root to: 'home#index'
end