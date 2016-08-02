Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :index, :update]
  root to: "prototypes#index"
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
