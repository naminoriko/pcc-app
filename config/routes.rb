Rails.application.routes.draw do
  devise_for :users
  root to: "schedules#index"  
  resources :users,     only: [:index, :show, :edit, :update]
  resources :schedules do
    resources :applicants, only: [:create] 
  end

end
