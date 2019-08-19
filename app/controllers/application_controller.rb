class ApplicationController < ActionController::Base
    helper_method :current_user, :authorize_user

    def current_user
        if session[:user_id]
        User.find(session[:user_id])
        end
    end

    # Unless there is a user currently logged in, we set the flash hash to a message telling them to log in and redirec them to the login page
    def authorize_user
        unless current_user
        flash[:notice] = "Oopsie Slouchr, you aren't logged in!"
        redirect_to new_session_path
        end
    end
end
