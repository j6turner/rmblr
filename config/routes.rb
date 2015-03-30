Rails.application.routes.draw do
  devise_for :users
  root to: "rambles#index"
  resources :users
  resources :rambles
end
