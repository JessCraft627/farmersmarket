class ShoppersController < ApplicationController
  # skip_before_action :authorized, only: [:new, :create, :show]
  before_action :find_shopper, only: [:show, :profile]
  before_action :get_products_from_cart, only: [:show, :profile]
  before_action :get_total_price, only: [:show, :profile]

  def show
    render :show
  end

  def profile
    render :show
  end

  def new
    @shopper = Shopper.new
    render :new
  end

  def create
    @shopper = Shopper.create(shopper_params)
    if @shopper.valid?
      flash[:notice] = "Account successfully created"
      redirect_to shopper_path(@shopper)
    else
      render :new
    end
  end

  def edit
    render :edit
  end

  def update
    if @shopper.update(shopper_params)
      flash[:notice] = "Successfully updated."
      redirect_to @shopper
    else
      render :edit
    end
  end

  private
  def find_shopper
    if params[:id] != nil
      @shopper = Shopper.find(params[:id])
    else
      @shopper = Shopper.find(session[:shopper_id])
    end
  end

  def shopper_params
    params.require(:shopper).permit(:name, :address, :email, :city, :state, :zip, :card_number, :expiration_month, :expiration_year,
    :cvv, :password, :password_confirmation)
  end

end
