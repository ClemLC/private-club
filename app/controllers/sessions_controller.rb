class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(id: params[:session][:user_id])
    if user
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'ID invalide'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
