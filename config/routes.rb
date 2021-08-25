Rails.application.routes.draw do
  root to: "top#index"
  resources :products
  resources :movies
  resources :users
end
