Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show]
  resources :users, only: [:index, :show]
end
