Nutfund::Application.routes.draw do
  root to: 'pages#launch'

  devise_for :users

  resources :campaigns do
    resources :payments
  end

  resources :payments

  get '/about',      to: 'pages#about'
  get '/contact_us', to: 'pages#contact'
  get '/bounties/', to: 'pages#nutfund'
  get '/amazon', to: 'pages#amazon'
end
