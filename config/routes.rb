Nutfund::Application.routes.draw do
  root to: 'campaigns#landingpage'

  devise_for :users

  resources :campaigns do
    resources :payments
  end
end
