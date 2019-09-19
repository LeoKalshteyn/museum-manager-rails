class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  # raises exception if there isn't sufficient protection and saying what caused the issue.
  protect_from_forgery with: :exception
  helper_method :current_user

  def require_logged_in
    redirect_to '/login' unless current_user
  end

  def logged_in?
    session[:user_id]
  end

  private

  # finds session's user id and assigns to current user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


end
