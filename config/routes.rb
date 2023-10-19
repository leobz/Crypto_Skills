Rails.application.routes.draw do
  devise_for :candidates
  root :to => "jobs#index"

  get "admin/log_out" => "admin_sessions#destroy", :as => "log_out"
  get "admin/log_in" => "admin_sessions#new", :as => "log_in"

  resources :admin_sessions
  resources :jobs
  resources :companies

  post '/invoices/create', to: 'invoices#create'
  post '/invoices/webhook', to: 'invoices#webhook'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
