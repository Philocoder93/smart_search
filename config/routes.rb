Rails.application.routes.draw do
  devise_for :users
  root to: 'users#start'

  get 'searches_delete_all' => 'searches#delete_all'

  resources :users do
    resources :posts
    resources :searches
  end
end
