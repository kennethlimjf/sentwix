require 'sidekiq/web'

Rails.application.routes.draw do
  root 'robots#index'
  resources :movies, only: [:create, :destroy] do
    resources :tweets, only: [:index]
  end

  mount Sidekiq::Web => '/sidekiq'
end
