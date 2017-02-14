class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    @current ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
