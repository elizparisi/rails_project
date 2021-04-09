class SessionsController < ApplicationController

  def create
    #find the user
    user = User.find_by(username: params[:user][:username])
    #authenticate user, if there is a user and they are authenticated
    if user && user.authenticate(params[:user][:password])
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

  def github
    #find_or_create a user using the attributes auth
    @user = User.find_or_create_by(email: auth["info"]["email"]) do |user|
      user.username = auth["info"]["first_name"]
      user.password = SecureRandom.hex(10)
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
