class ApplicationController < ActionController::Base
  def cart
    session[:cart] ||= []
  end

  def add_product_to_cart(product_id)
    cart << product_id
  end

  def get_products_from_cart
    @cart_products = Product.find(cart)
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
