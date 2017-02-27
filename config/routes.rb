Rails.application.routes.draw do
  devise_for :users
  root to: 'users#start'
  resources :users do
    resources :posts
    resources :searches
  end
end
