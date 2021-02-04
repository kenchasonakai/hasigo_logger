Rails.application.routes.draw do
  root to: 'logs#new'
  resources :logs do
    collection do
      get 'return_logs_json'
    end
  end
  resources :users
  resources :municipalities
  resources :user_sessions
end
