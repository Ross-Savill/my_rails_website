class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:admin_id]
      @current_user ||= Admin.find(session[:admin_id])
    else
      @current_user = nil
    end
  end

end
