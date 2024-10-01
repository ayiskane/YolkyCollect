Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "home#index"

  devise_for :users, controllers: {
    #registrations: 'users/registrations', # This controller handles actions related to user sign-up and account management.
    session: 'users/sessions', # This controller handles actions related to user sign-in and sign-out.
    omniauth_callbacks: 'users/omniauth_callbacks#discord' # This controller manages the authentication flow when users sign in using external providers like Google, Facebook, etc.
  }

  delete '/logout', to: 'sessions#destroy', as: :logout

  authenticated :user, ->(user) { user.is_admin? } do
    namespace :admin do
      resources :posts
    end
  end
end
