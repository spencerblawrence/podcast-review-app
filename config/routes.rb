Rails.application.routes.draw do
  root 'podcasts#index'
  resources :podcasts, only: [:index]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
