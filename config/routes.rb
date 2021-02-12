Rails.application.routes.draw do
<<<<<<< Updated upstream
  resources :tweets
  root to: "teams#index"
=======
  devise_for :users
  
>>>>>>> Stashed changes
end
