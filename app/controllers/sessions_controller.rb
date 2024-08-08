class SessionsController < ApplicationController



  def new
      @user = User.new
  end
  def create
    # Corrected query syntax
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in successfully"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid Username or Password or Both."
      render 'new', status: :unprocessable_entity
    end
  end



  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out successfully"
    redirect_to login_path
  end


end
