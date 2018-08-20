class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    if @order.valid?
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def order_params
    params.require(:order).permit(:shopper_id)
  end
end
