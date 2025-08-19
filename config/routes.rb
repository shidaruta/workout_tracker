Rails.application.routes.draw do
  resources :workout_sessions, only: [:new, :create, :index, :show] do
    resources :workout_entries, only: [:new, :create, :update, :destroy]
  end
  resources :exercises, only: [:index, :show, :new, :create]
  root "workout_sessions#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
