Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :index]
  root to: "prototypes#index"
end
