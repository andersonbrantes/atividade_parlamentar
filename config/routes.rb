Rails.application.routes.draw do
  namespace :relatorios do
    resources :arquivos_externos
  end
  
  root 'relatorios/arquivos_externos#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
