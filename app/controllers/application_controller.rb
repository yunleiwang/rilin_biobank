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

  def set_patient_info
    unless session[:patient_info_id] then
      flash[:notice] = "请先选择患者"
      redirect_to :controller=>'patient_infos',:action=>'index'
    end
  end

  #pajx请求  如果是pajx请求  不引layout
  def render_layout?
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def render(*args, &block)
    if request.headers['X-PJAX']
      args[0] ||= {}
      args[0][:layout] = false
    end
    super(*args, &block)
  end
end

