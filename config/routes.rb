Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users

  resources :user, only: [:show] do
    resources :items
  end
  root to: 'user#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
