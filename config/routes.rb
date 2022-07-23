Rails.application.routes.draw do
  namespace :report_manager do
    resources :external_files
  end
  
  root 'report_manager/external_files#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
