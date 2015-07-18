class UsersController < ApplicationController

  def show
  	begin
  		@user = User.find_by(username: params[:username])
  	rescue
  		redirect_to root_path, notice: "User not found :("
  	end
  end

end
