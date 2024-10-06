Rails.application.routes.draw do
  get "home/index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :memorials do
    patch :toggle_collected, on: :member
  end

  root "home#index"
end
