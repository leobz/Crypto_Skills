Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :candidates
  root :to => "jobs#index"

  get "admin/log_out" => "admin_sessions#destroy", :as => "log_out"
  get "admin/log_in" => "admin_sessions#new", :as => "log_in"

  resources :admin_sessions
  resources :jobs
  resources :companies
  resources :alerts

  get "/candidates/profile" => "candidates#profile"

  post "/alerts/create" => "alerts#create"
  delete "/alerts/:id" => "alerts#destroy"

  post '/invoices/create', to: 'invoices#create'
  post '/invoices/webhook', to: 'invoices#webhook'


  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  Rails.application.routes.draw do
    mount Sidekiq::Web => '/sidekiq'
  end
end
