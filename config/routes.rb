Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :index, :update]
  root to: "prototypes#index"
end
