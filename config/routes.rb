Rails.application.routes.draw do
  get 'messages/index'
  get 'users/index'
  get 'users/search'
  get 'teams/list'
  get 'teams/search'
  post 'teams/new'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
   }
  root to: "teams#index"
  resources :users do
    resources :teams
  end
  resources :rooms do
    resources :messages
  end
end
