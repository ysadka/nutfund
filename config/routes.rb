Nutfund::Application.routes.draw do
  root to: 'campaigns#index'

  devise_for :users

  resources :campaigns do
    resources :payments
  end
end
