Rails.application.routes.draw do
  root to: 'logs#new'
  resources :logs
  resources :users
  resources :municipalities
  resources :user_sessions
  namespace :api do
    namespace :v1 do
      resources :logs
    end
  end
end
