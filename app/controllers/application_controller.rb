class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # private
  # protected
  #
  # def authenticate_user
  #   Rails.logger.debug "session: #{session.inspect}"
  #   if session[:user_id]
  #     @current_user = Developer.find(session[:user_id])
  #     return true
  #   else
  #     flash[:error] = 'Please Log In'
  #     redirect_to developers_path
  #     return false
  #   end
  # end

  def current_user
    Developer.find_by_id(session[:developer_id])
  end
end
