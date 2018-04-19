class SessionsController < ApplicationController
	
	def create
		@user = User.find_or_create_from_auth_hash(auth_hash)
		session[:current_user_id] = @user.id
    	session[:user_id] = @user.id
		redirect_to root_path
	end

	def destroy
    session[:current_user_id] = nil
    session[:user_id] = nil
    cookies.delete(:auth_token)
    redirect_to root_url, :notice => "Logged out!"
  end

	protected

	def auth_hash
		request.env['omniauth.auth']
	end
end