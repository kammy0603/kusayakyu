Rails.application.routes.draw do
  root to: "teams#index"
  get 'users/index'
  get 'users/search'
  post 'teams/new'
  get 'teams/list'
  get 'teams/search'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
   }
  resources :users
  resources :teams

end
