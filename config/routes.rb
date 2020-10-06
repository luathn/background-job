Rails.application.routes.draw do
  require 'sidekiq/web'
  resources :videos
  mount Sidekiq::Web => '/sidekiq'
end
