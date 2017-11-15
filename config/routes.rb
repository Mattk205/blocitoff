Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:new, :create]
  end
  resources :items, only: [:destroy]
  root to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
