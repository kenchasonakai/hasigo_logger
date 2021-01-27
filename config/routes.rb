Rails.application.routes.draw do
  root to: 'logs#new'
  resources :logs
  resources :users
  resources :user_sessions
end
