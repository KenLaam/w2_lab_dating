class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(email: params[:email]) and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success]   = 'Logged in'
      redirect_to root_path
    else
      flash.now[:error] = "Invalid username or password"
      render "new"
    end
  end
end
