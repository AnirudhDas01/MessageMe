Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
