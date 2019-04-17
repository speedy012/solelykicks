class UsersController < ApplicationController
  before_action :logged_in_user, only: [:show, :index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user
  end

  def login
    session[:user_id] = User.find_by(name: params[:name]).id
    redirect_to user_path(session[:user_id])
  end

  def logout
    session[:user_id] = nil
    redirect_to users_path
  end

  private

  def logged_in_user
    @logged_in_user = session[:user_id]
  end

end
