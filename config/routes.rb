Nutfund::Application.routes.draw do

  devise_for :users
  resources :campaigns

end
