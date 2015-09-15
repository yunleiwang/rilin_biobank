class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize

  def authorize
    if session[:sys_user_id].nil?
      redirect_to sys_account_sign_in_path
    end
  end

  def none_layout
    render :layout => false
  end
end
