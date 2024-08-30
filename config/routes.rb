Rails.application.routes.draw do
  root "pages#home"

  get "pages/user"
  get "pages/settings"
  get "pages/financialhealth"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

    # Custom routes
  get "user", to: "pages#user"
  get "settings", to: "pages#settings"
  get "financialhealth", to: "pages#financialhealth"
  get "businesscoaches", to: "pages#businesscoaches"
  get "businessresources", to: "pages#businessresources"
  get "healthcare", to: "pages#healthcare"
  get "physicalhealth", to: "pages#physicalhealth"
  get "mentalhealth", to: "pages#mentalhealth"
  get "doctors", to: "pages#doctors"
  get "booking", to: "pages#booking"

  # Defines the root path route ("/")
  # root "posts#index"
end
