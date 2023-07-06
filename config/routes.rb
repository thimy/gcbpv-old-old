Rails.application.routes.draw do
  namespace :secretariat do
    root to: "subscriptions#index"

    resources :students
    resources :subscriptions
    resources :teachers
    resources :slots
    resources :instruments
    resources :workshops
    resources :seasons
    resources :plans
    resources :cities

    resources :events
    resources :posts
    resources :categories
    resources :editions

    resources :staffs
    resources :users
  end
  
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :posts
  resources :events

  get "/emt", to: "emt#index"
  namespace :emt do
    resources :discoveries
    resources :workshops
    resources :teachers
    resources :instruments
    resources :meetings
  end

  get "/groupement", to: "groupement#index"
  get "/groupement/staff", to: "groupement#staff"

  get "/events", to: "events#index"
  get "/bogue", to: "events#bogue"
  get "/events/:id", to: "events#show"
  get "/centre-de-ressources", to: "resources#index", as: "resources"
  get "/centre-de-ressources/editions", to: "resources#editions", as: "editions"
  get "/centre-de-ressources/editions/:id", to: "resources#edition", as: "edition"

end
