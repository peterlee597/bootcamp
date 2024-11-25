Rails.application.routes.draw do
  resources :donations
  devise_for :users
  get "donations/new"
  get "donations/create"
  # resources :cate_twos
  # resources :category_twos
  root "categories#index"
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  resources :categories 

  resources :donations, only: [:new, :create]
  
    resources :articles do
      resources :comments
    end
  resources :authors
  
end
