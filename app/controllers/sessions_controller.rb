class SessionsController < ApplicationController

  def create
    #find the user
    user = User.find_by(username: params[:user][:username])
    #authenticate user, if there is a user and they are authenticated
    if user &&  user.authenticate(params[:user][:password])
      #set session id to user id
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
