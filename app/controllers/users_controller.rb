class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # check to see if user saves
    if @user.save
    # log them in and redirect to show page
       session[:user_id] = @user.id
       redirect_to user_path(@user)
    else
       render :new
    end
  end

  def show
    redirect_if_not_logged_in
    @user = User.find_by_id(params[:id])
    #if it doesn't find id, this will give you nil instead of an error, redirect if no user is found
    redirect_to root_path if !@user
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
