Rails.application.routes.draw do
  resources :tweets
  root to: "teams#index"
end
