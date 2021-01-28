Rails.application.routes.draw do
  root to: 'logs#new'
  resources :logs
  resources :users
  resources :municipalities
  resources :user_sessions
end
