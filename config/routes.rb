Rails.application.routes.draw do

  resources :carts, only: :show
  devise_for :users
  get 'dashboard/index'

  resources :products do
    resources :orders, only: :create
  end

  root 'products#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
