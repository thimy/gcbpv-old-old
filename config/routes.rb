Rails.application.routes.draw do
  namespace :pupitre do
    resources :profiles
    resources :slots
    resources :courses
    resources :workshops
    resources :students
    resources :projects
    resources :meetings
    resources :instruments
    resources :group_works
    resources :discoveries
    resources :teachers
    resources :cities

    root to: "profiles#index"
  end
  namespace :secretariat do
    root to: "subscriptions#index"

    resources :payors
    resources :sessions
    resources :students
    resources :subscriptions
    resources :teachers
    resources :slots
    resources :instruments
    resources :discoveries
    resources :d_classes
    resources :workshops
    resources :meetings
    resources :group_works
    resources :projects
    resources :seasons
    resources :plans
    resources :cities

    resources :events
    resources :posts
    resources :categories
    resources :editions

    resources :staffs
    resources :users
    resources :payment_states
    resources :configurations, only: [:index, :show, :edit, :update]
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
    resources :projects
  end

  get "/groupement", to: "groupement#index"
  get "/groupement/staff", to: "groupement#staff"

  get "/events", to: "events#index"
  get "/bogue", to: "events#bogue"
  get "/events/:id", to: "events#show"
  get "/centre-de-ressources", to: "resources#index", as: "resources"
  get "/centre-de-ressources/editions", to: "resources#editions", as: "editions"
  get "/centre-de-ressources/editions/:id", to: "resources#edition", as: "edition"

  namespace :account, path: "compte", as: "account" do
    get "", to: "dashboard#index", as: "/"
    resources "cours", controller: :sessions, as: "sessions"
    # get "cours/:id/session", to: "account_sessions#new", param: :id
    resources "cours/:session_id/sessions", controller: :session_reports, as: "session_reports"
    resource "reglages", controller: :settings, only: [:show, :update], as: "settings"
    resource "inscription", controller: :subscription, only: [:show, :update], as: "subscription"
    resources "disponibilites", controller: :slots, as: "slots"
  end

end
