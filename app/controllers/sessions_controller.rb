class SessionsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password]) # get this for free from has_secure_password
  		session[:user_id] = user.id
  		redirect_to root_url, notice: "Welcome back, " + user.name
  	else
  		flash.now.alert = "Invalid email/password combination."
  		render "new"
  	end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You have successfully logged out."
  end

end
