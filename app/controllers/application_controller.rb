class ApplicationController < ActionController::Base
  def cart
    session[:cart] ||= []
  end

  def add_product_to_cart(product_id)
    cart << product_id
  end

  def get_products_from_cart
    @cart_products = Product.find(cart)
  end
end
