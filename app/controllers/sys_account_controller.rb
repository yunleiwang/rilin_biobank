class SysAccountController < ApplicationController
  skip_filter :authorize, :only => [:sign_in, :login]
  def sign_in
    render layout: false
  end

  def login
    sys_user = SysUser.find_by_username(params[:username])
    if sys_user.nil?
      flash[:username_error] = ' 用户名错误，没有该用户！'
      render :action => 'sign_in'
    else
      if Digest::MD5.hexdigest(params[:password])==sys_user.password
        session[:sys_user_id] = sys_user.id
        redirect_to :controller => 'home', :action => 'index', :layout=> false
      else
        flash[:password_error] = ' 密码错误！'
        render :action => 'sign_in', :layout => false
      end
    end

  end

  def sign_out
    session[:sys_user_id]= nil
    redirect_to :action => 'sign_in', :id=>1
  end

  def change_password
  end
end
