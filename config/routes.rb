Rails.application.routes.draw do

  get '/shop' => 'storefront#index'
  get '/about' => 'storefront#about'
  get '/show'	=> 'orders#show'

  resource :cart, only: [:edit, :update, :destroy]
  resources :line_items, only: [:create, :destroy, :update]
  resources :orders, only: [:new, :create, :show]


  devise_for :users
  root 'storefront#index'

  namespace :admin do
    resources :products
    resources :brands
    resources :categories
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
