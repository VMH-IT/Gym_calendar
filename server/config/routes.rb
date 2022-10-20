Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  namespace :api do
    namespace :v1 do
      namespace :admins do
        resources :sessions, only: [:create]
        resources :exercises
        resources :admins
        resources :categories
        get '/search_gym', to: 'categories#search_gym'
        get '/search_cadio', to: 'categories#search_cadio'
      end
      namespace :users do
        resources :users
        resources :sessions , only: [:create]
        # resources :account_activations, only: [:edit]
        resources :exercises

      end
    end
  end
end
