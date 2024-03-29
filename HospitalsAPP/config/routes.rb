Rails.application.routes.draw do
  resources :medical_cards
  devise_for :users
  resources :medical_records
  resources :patients do
    resources :medical_cards, only: [:index], controller: 'medical_cards'
  end
  resources :doctors
  resources :hospitals

  devise_scope :user do
    match '/users/sign_out', to: 'devise/sessions#destroy', via: [:get, :delete]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
