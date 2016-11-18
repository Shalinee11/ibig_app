class SessionsController < ApplicationController
  def new
  end
  
  def create
    #logs in user and authenticate
    user = User.find_by(userid: params[:session][:userid].downcase)
    if user && user.authenticate(params[:session][:password])
    else
      #create error msg
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
  end
end
