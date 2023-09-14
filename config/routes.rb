Rails.application.routes.draw do
  devise_for :users
  #get 'schedules/index'
  root to: "schedules#index"  
  resources :users,     only: [:index, :show, :edit, :update]
  resources :schedules  #,only: [:new, :create] #do
    #resources :applicants, only: [:index?, :create?] 
  #end

end
