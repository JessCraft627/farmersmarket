class ApplicationController < ActionController::Base
  helper_method :current_shopper
  helper_method :logged_in?
  # before_action :authorized

  def current_shopper
    @user = Shopper.find_by({ id: session[:shopper_id] })
  end

  def logged_in?
    !!current_shopper()
  end

  # def authorized
    # redirect_to login_path unless logged_in?
    # redirect_to public_path unless logged_in?
  # end

  def cart
    session[:cart] ||= []
  end

  def add_product_to_cart(product_id)
    cart << product_id
  end

  def get_products_from_cart
    # @cart_products = Product.find(cart)
    @cart_products = Product.find(session[:cart])
    @quantities = session[:cart]
    #session[:cart] displays arrays of product_id of products in cart
  end

  def get_total_price
    costs = []
    @cart_products.each do |product|
      cost = product.price * @quantities.count(product.id.to_s)
      costs << cost
    end
    @total_costs = costs.inject(0){|sum,x| sum + x }
  end
end
