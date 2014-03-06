Nutfund::Application.routes.draw do
  root to: 'campaigns#homepage'

  devise_for :users

  resources :campaigns do
    resources :payments
  end

  resources :payments

  get '/about',      to: 'pages#about'
  get '/contact_us', to: 'pages#contact'
  get '/launch',     to: 'pages#launch'

  post '/coinbase_callback', to: 'payments#coinbase_callback'
end
