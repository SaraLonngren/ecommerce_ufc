Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :orders
    resources :categories
    resources :users
    resources :employees
    root 'dashboard#index'
  end

  root 'pages#index'
  get '/categories/:category', to: 'categories#show', as: 'categories'
  get '/products/:id', to: 'products#show', as: 'products'
  devise_for :employees
  resources :order_items, only: [:create, :destroy]
  get '/checkout/edit', to: 'checkout#edit'
  patch '/checkout/update', to: 'checkout#update'
  get '/search', to:'categories#search', as:'search'
  
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  authenticated :user do 
  get '/my_orders', to: 'users#my_orders', as: 'my_orders' 
  end 

end
