class SessionsController < ApplicationController
  include SessionsHelper
  
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to notes_path
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to notes_path, notice: 'Note was successfully created.' 
    end
  end
  
  def destroy
    sign_out
    redirect_to notes_path
  end
end
