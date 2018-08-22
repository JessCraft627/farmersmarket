Rails.application.routes.draw do
  resources :orders, only: [:show, :new, :create, :edit, :update]
  resources :shoppers, only: [:show, :new, :create, :update, :edit]
  root to: "products#main"
  get '/cart/confirmation', to: 'cart#confirmation'
  patch '/cart', to: 'cart#update', as: 'add_to_cart'
  get '/products/food_type/:food_type', to: 'products#food_type', as: 'food_type'
  resources :products, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
