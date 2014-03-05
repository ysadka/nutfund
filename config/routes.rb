Nutfund::Application.routes.draw do
  root to: 'campaigns#landingpage'

  devise_for :users

  resources :campaigns do
    resources :payments
  end

  resources :payments

  get '/about',      to: 'pages#about'
  get '/contact_us', to: 'pages#contact'
  get '/bounties/', to: 'pages#nutfund'
  get '/bounties/when-amazon-accepts-bitcoin', to: 'pages#amazon'
end
