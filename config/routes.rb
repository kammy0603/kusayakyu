Rails.application.routes.draw do
  get 'users/index'
  get 'users/search'
  devise_for :users
  resources :users
  resources :teams
  root to: "teams#index"

end
