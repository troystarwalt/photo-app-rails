module SessionsHelper
  def log_in(admin)
    session[:admin_id] = admin.id
  end

  def logged_in?
    !current_admin.nil?
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end
end
