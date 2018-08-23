class CartController < ApplicationController
  before_action :get_products_from_cart, only: :show #get items from cart comes from ApplicationController
  before_action :get_total_price, only: :show

  def update

    params[:quantity].to_i.times do
      add_product_to_cart(params[:product_id])
    end

    # byebug

    flash[:notice] = "Successfully added #{params[:name]} to cart"
    # redirect_to products_path #redirects to refresh cart
    food_type = Product.find(params[:product_id])[:food_type]
    redirect_to food_type_path(food_type) #redirects to refresh cart
  end

  def show
    render :show
  end

  def clear_cart
    session[:cart] = []
    redirect_to show_cart_path
  end



end
