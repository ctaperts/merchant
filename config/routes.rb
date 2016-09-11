Rails.application.routes.draw do

  get 'loadings/index'
  get 'loadings/show_all'
  get 'loadings/show_by_order'
  get 'loadings/show_by_location'
  resources :loadings do
    put :load_check, on: :member
    put :quality_check, on: :member
  end


  resources :locations
  resources :truck_histories
  resources :trucks
  get '/shop' => 'storefront#index'
  get '/about' => 'storefront#about'
  get '/show'	=> 'orders#show'
  get '/routes/history' => 'routes#history'
  get '/orders/show_all' => 'orders#show_all'

  resource :cart, only: [:edit, :update, :destroy]
  resources :line_items, only: [:create, :destroy, :update]
  resources :orders, only: [:new, :create, :show]
  resources :routes do
    put :delivered, on: :member
    put :not_delivered, on: :member
    put :not_loaded, on: :member
    put :loaded, on: :member
  end



  devise_for :users
  get 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  get 'users/:id' => 'users#show', as: :user
  resources :users

  root 'storefront#index'

  namespace :admin do
    resources :products do
      put :per_item, on: :member
      put :per_item_remove, on: :member
      put :per_pound, on: :member
      put :per_pound_remove, on: :member
      put :per_case, on: :member
      put :per_case_remove, on: :member
    end
    resources :brands
    resources :categories
    resources :users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
