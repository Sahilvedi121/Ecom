Rails.application.routes.draw do
  # get "profiles/index"
  # get "profiles/show"
  # get "profiles/new"
  # # get "products/index"
  # get "products/new"
  # get "products/edit"
   devise_for :users

   resources :products, only: [:index, :create, :show, :edit, :update, :new, :destroy]
   resources :profiles, only: [:index, :show, :new, :create, :edit, :update]

  root to: "products#index"
end
