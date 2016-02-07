class ApplicationController < ActionController::Base
	# protected   
	# 	def authenticate_user!     
	# 		if user_signed_in?       
	# 			super     
	# 		else       
	# 			redirect_to login_path, :notice => 'Please log in'
	# 		end
	# 	end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @maps = 'http://maps.seamlesssell.com/maps/active/'

end
