class SessionsController < ApplicationController
  def new
  end
  def create
  	user 	= User.find_by(email: params[:Session][:email].downcase)
  	if user && user.authenticate(params[:Session][:password])
  	else
  		flash.now[:danger] = 'Invalid Email/password combination'
  	    render 'new'
    end
  end
  def destroy
  end


end
