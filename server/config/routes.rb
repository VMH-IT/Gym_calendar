Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  namespace :api do
    namespace :v1 do
      namespace :admins do
        resources :sessions, only: [:create]
        resources :exercises
        resources :admins
        resources :categories do 
          collection do
            get :category_gym
            get :category_cadio
          end
        end
      end
      namespace :users do
        resources :users
        resources :sessions , only: [:create]
        resources :exercises
        resources :roupackages
      end
    end
  end
end
