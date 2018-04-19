class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  include SessionsHelper




private
add_flash_types :danger, :info, :warning, :success

add_flash_types :danger, :info, :warning, :success

def current_user
  @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
end

def logged_in
  !current_user
end

  
end
