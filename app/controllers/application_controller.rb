class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize

  def authorize
    p session[:sys_user_id]
    if session[:sys_user_id].nil?
      redirect_to sys_account_sign_in_path
    end
  end

  def set_patient_info
    unless session[:patient_info_id] then
      flash[:notice] = "请先选择患者"
      redirect_to :controller=>'patient_infos',:action=>'index'
    end
  end

  def none_layout
    render :layout => false
  end
end
