# coding: utf-8
class ApplicationController < ActionController::Base
  include SessionsHelper
  #  before_filter :signed_in_user
  # protect_from_forgery
  #  
  # 
   def signed_in_user
     redirect_to signin_path, notice:"请先登陆" unless signed_in?
   end
  
   def admin_user
     redirect_to(root_path) unless current_user.admin?
   end
end
