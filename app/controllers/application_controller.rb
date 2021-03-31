class ApplicationController < ActionController::Base

  # this gives access to these in the views
  helper_method :current_user, :logged_in?

  private

  def current_user
    # if @current_user isn't already defined it will find by id (and if there is a session id)
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def redirect_if_not_logged_in
    redirect_to root_path if !logged_in?
  end
end
