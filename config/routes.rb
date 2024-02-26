Rails.application.routes.draw do
  root "users#index"

  get "up" => "rails/health#show", as: :rails_health_check
  resources :users, only: [:new, :index, :create]
  resources :posts, only: [:new, :index, :create]
end
