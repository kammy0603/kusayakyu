Rails.application.routes.draw do
  get 'users/index'
  get 'users/search'
  get 'teams/list'
  get 'teams/search'
  post 'teams/new'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
   }
  resources :users
  resources :teams
  root to: "teams#index"

end
