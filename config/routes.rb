Rails.application.routes.draw do
  resources :orders, only: [:show, :new, :create, :edit, :update]
  resources :shoppers, only: [:show, :new, :create, :update]
  get '/cart/main', to: 'cart#main'
  root to: "products#main"
  get '/cart/confirmation', to: 'cart#confirmation'
  patch '/cart', to: 'cart#update', as: 'add_to_cart'
  get '/products/food_type/:food_type', to: 'products#food_type', as: 'food_type'
  resources :products, only: [:index, :show]

  get '/cart', to: 'cart#show', as: 'show_cart'
  post '/cart', to: 'cart#clear_cart', as: 'clear_cart'

  #Customize Edit
  get '/profile', to: 'shoppers#profile', as: 'profile'
  get '/profile/edit', to: 'shopper#edit', as: 'edit_profile'

  #Customize login & logout
  get '/login', to: 'sessions#new', as: 'login'
  # get '/public/login', to: 'sessions#new', as: 'login'
  # get '/login/public', to: 'sessions#public', as: 'public' #just added
  # get '/public', to: 'sessions#public', as: 'public' #just added
  post '/login', to: 'sessions#create'
  # post 'public/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
