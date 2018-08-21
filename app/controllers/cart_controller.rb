class CartController < ApplicationController
  def update
    add_product_to_cart(params[:product_id])
    flash[:notice] = "Successfully added #{params[:name]} to cart"
    # redirect_to products_path #redirects to refresh cart
    food_type = Product.find(params[:product_id])[:food_type]
    redirect_to food_type_path(food_type) #redirects to refresh cart
  end
end
