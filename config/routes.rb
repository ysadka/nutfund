Nutfund::Application.routes.draw do
  root to: 'campaigns#index'

  devise_for :users

  resources :campaigns
  resources :payments
end
