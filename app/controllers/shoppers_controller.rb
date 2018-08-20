class ShoppersController < ApplicationController
  #[:show, :new, :create, :update, :edit]

  def show
      @shopper = Shopper.find(params[:id])
  end

  def new
    @shopper = Shopper.new
  end

  def create
    @shopper = Shopper.create(shopper_params)
    if @shopper.valid?
      redirect_to shopper_path(@shopper)
    else
        render :new
      end
  end


  def edit
      @shopper = Shopper.find(params[:id])
  end

  def update
      @shopper = Shopper.find(params[:id])
      if @shopper.update(shopper_params)
        redirect_to shopper_path(@shopper)
      else
          render :edit
        end
  end



  private
  def shopper_params
    params.require(:shopper).permit(:name, :address)
  end

end
