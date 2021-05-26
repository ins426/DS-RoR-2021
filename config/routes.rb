Rails.application.routes.draw do
  resources :administradors
  resources :likes
  resources :comentarios
  resources :coveets
  resources :usuarios
  resources :developers
  resources :projects
  resources :sessions, only: [:create, :destroy]
  root "home#index"
  
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout' 

  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
      resources :projects, :usuarios, :coveets, :comentarios, :likes
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
