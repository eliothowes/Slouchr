class ApplicationController < ActionController::Base
  before_action :require_login
  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def is_admin?
    unless current_user.username == "admin"
      redirect_to dashboard_path
    end
  end

  # Unless there is a user currently logged in, we set the flash hash to a message telling them to log in and redirec them to the login page

  private

  def require_login
    unless current_user
      flash[:notice] = "Oopsie Slouchr, you aren't logged in!"
      redirect_to new_session_path
    end
  end
end
