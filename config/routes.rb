Rails.application.routes.draw do
  devise_for :users
  get 'https://smart-search-philocoder93.herokuapp.com', to: 'users#start'

  get 'searches_delete_all' => 'searches#delete_all'

  resources :users, :except => [:edit, :destroy, :index, :new, :create, :show, :update, :destroy] do
    resources :posts
    resources :searches, :except => [:edit, :destroy]
  end
end
