class ApplicationController < ActionController::Base

  # allows views to call these methods
  helper_method :current_user, :logged_in?

  private
  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def require_login
    redirect_to new_session_url unless logged_in?
  end

  def log_in!(user)
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end

  def log_out!
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end

end
