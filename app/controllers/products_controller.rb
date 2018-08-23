class ProductsController < ApplicationController
  before_action :find_product, only: :show
  before_action :get_products_from_cart, only: :index #get items from cart comes from ApplicationController

  def index
    @products = Product.all
  end

  def show
  end

  def food_type
   find_products
  end



  private

  def find_product
    @product = Product.find(params[:id])
  end

  def find_products
    @food_type = params[:food_type]
    @products = Product.where(food_type: @food_type)
  end
end
