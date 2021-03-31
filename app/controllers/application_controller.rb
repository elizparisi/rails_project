class ApplicationController < ActionController::Base

  def current_user
    # if @current_user isn't already defined it will find by id (and if there is a session id)
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!@current_user
  end


end
