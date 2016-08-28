Rails.application.routes.draw do

  get '/shop' => 'storefront#index'
  get '/about' => 'storefront#about'
  get '/show'	=> 'orders#show'
  get '/routes/history' => 'routes#history'

  resource :cart, only: [:edit, :update, :destroy]
  resources :line_items, only: [:create, :destroy, :update]
  resources :orders, only: [:new, :create, :show]
  resources :routes do
    put :delivered, on: :member
    put :not_delivered, on: :member
  end



  devise_for :users
  get 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  get 'users/:id' => 'users#show', as: :user
  resources :users

  root 'storefront#index'

  namespace :admin do
    resources :products
    resources :brands
    resources :categories
    resources :users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
