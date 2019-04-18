class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  # before_action :logged_in_user, only: [:show, :index]
  #example from class: before_action :find_the_user, only: [:show, :edit , :update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      flash[:user_error] = @user.errors.full_messages
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

  # def login
  #   session[:user_id] = User.find_by(name: params[:name]).id
  #   redirect_to user_path(session[:user_id])
  # end

  # def logout
  #   session[:user_id] = nil
  #   redirect_to users_path
  # end

  # private
  #
  # def logged_in_user
  #   @logged_in_user = session[:user_id]
  # end

end
