class ApplicationController < ActionController::Base
  before_action :authorized, except: [:home]
  helper_method :logged_in_user

  def logged_in_user
    User.find_by({id: session[:user_id]})
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def home
    render 'users/home.erb'
  end

end
