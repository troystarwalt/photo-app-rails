class AdminsController < ApplicationController
  def new

    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to root_url, notice: "Signed Up"
    else
      render "new"
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password)
  end


end
