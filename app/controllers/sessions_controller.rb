# coding: utf-8
class SessionsController < ApplicationController
  include SessionsHelper
  
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:success] = '登陆成功'
      redirect_to notes_path
    else
      flash[:error] = '账号或密码错误'
      redirect_to notes_path
    end
  end
  
  def destroy
    sign_out
    redirect_to notes_path
  end
end
