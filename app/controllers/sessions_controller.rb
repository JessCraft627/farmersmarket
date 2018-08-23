
class SessionsController < ApplicationController
  # skip_before_action :authorized, except: :destroy

  def new
    render :new
  end

  def create
    @shopper = Shopper.find_by({ name: params[:name] })
    if !!@shopper && @shopper.authenticate(params[:password])
      flash[:notice] = "Successfully logged in #{@shopper.name}!"
      session[:shopper_id] = @shopper.id
      redirect_to profile_path
    else
      flash[:notice] = "Invalid name or password"
      redirect_to login_path
    end
  end

  def public
    render :public
  end

  def destroy
    session.delete(:shopper_id)
    redirect_to login_path
  end
end
