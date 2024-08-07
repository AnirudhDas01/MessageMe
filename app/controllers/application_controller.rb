class ApplicationController < ActionController::Base
helper_method :current_user , :loggin_in?

  def current_user
    @current_user ||= User.find(sessions[:user_id]) if session[:user_id]

  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in
      flash[:notice] = "You have to be Logged in to perform that task"
      redirect_to login_path
    end
  end
end
