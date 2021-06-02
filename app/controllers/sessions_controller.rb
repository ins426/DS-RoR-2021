class SessionsController < ApplicationController
  def new
  end

  def create
    administrador = Administrador.find_by(username: params[:username])
    if administrador && administrador.authenticate(params[:password])
      SessionMailer.with(administrador: administrador).login_email.deliver_later
      session[:user_id] = administrador.id
      redirect_to root_url
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
	session[:user_id] = nil
	redirect_to root_url, notice: "Logged out!"
  end
end
