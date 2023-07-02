Rails.application.routes.draw do
  namespace :secretariat do
    root to: "subscriptions#index"

    resources :students
    resources :subscriptions
    resources :teachers
    resources :instruments
    resources :instrument_classes
    resources :sessions
    resources :workshops
    resources :seasons
    resources :plans
    resources :cities

    resources :events
    resources :posts
    resources :categories
    resources :editions
  end
  
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :posts
  resources :events

  get "/emt", to: "emt#index"
  namespace :emt do
    resources :workshops
    resources :teachers
    resources :instruments
  end

  get "/groupement", to: "groupement#index"
  get "/events", to: "events#index"
  get "/bogue", to: "events#bogue"
  get "/events/:id", to: "events#show"
  get "/centre-de-ressources", to: "resources#index", as: "resources"
  get "/centre-de-ressources/editions", to: "resources#editions", as: "editions"
  get "/centre-de-ressources/editions/:id", to: "resources#edition", as: "edition"

end
