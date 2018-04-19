class UsersController < ApplicationController

	before_action :logged_in_user,only:[:index]
  
  def index
    @user = current_user
    events = current_user.events
    @users = @user.events
  end

	private

	 def set_user
      @user = User.find(params[:id])
    end

	def logged_in_user
    unless logged_in?
      flash[:error] ="Please Log in"
      
    end    
  end
end
