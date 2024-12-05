Rails.application.routes.draw do
  # get "products/index"
  # get "products/new"
  # get "products/edit"
   devise_for :users

   resources :products, only: [:index, :create, :show, :edit, :update, :new, :destroy]
  root to: "products#index"
end
