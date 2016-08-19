Rails.application.routes.draw do
  devise_for :users
  root "prototypes#index"
  resources :users, only: [:show, :edit, :index, :update]
  scope module: :prototypes do
    resources :newests, only: [:index]
  end
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
