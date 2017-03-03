Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'landing#index'
  resources :about, only: [:index]
  resources :projects, only: [:index]
end
