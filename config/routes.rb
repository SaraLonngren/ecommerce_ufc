Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :categories
    resources :users
    root 'dashboard#index'
  end
  root 'dashboard#index'
  devise_for :employees
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
end
