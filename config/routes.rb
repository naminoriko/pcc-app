Rails.application.routes.draw do
  devise_for :users
 # get 'schedules/index'
  root to: "schedules#index"  
  resources :users, only: [:show, :edit, :update]

end
