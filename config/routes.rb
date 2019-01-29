Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'podcasts#index'
  resources :podcasts, only: [:index, :new, :create, :show]
  resources :genres, only: :index
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :podcasts, only: [:index, :create, :show]
      resources :reviews, only: :create
    end
  end
end
