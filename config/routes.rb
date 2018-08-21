Rails.application.routes.draw do
  resources :orders, only: [:show, :new, :create, :edit, :update]
  resources :shoppers, only: [:show, :new, :create, :update, :edit]
  resources :products, only: [:index, :show]

  patch '/cart', to: 'cart#update', as: 'add_to_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/products/food_type/:food_type', to: 'products#food_type', as: 'food_type'
end
