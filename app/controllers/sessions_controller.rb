class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.authenticate(params[:session][:email], params[:session][:password])
    if admin
      log_in admin
      redirect_to root_url, notice: "Welcome back #{admin.email}!"
    else
      flash.now.alert = "Invalid email or password."
      render "new"
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
