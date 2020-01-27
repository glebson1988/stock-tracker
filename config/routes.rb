Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get'my_friends', to: 'users#my_friends'
  get 'search_stock', to: 'stocks#search'
  resources :user_stocks, only: %i[create destroy]
end
