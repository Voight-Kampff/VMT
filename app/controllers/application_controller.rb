class ApplicationController < ActionController::Base
  protect_from_forgery

#custom devise redirect
	def after_sign_in_path_for(prs)
		"/espacepresse"
	end

<<<<<<< HEAD
=======
	def after_sign_in_path_for(admin)
		"/espacepresse"
	end

>>>>>>> parent of 16d11f6... Added Admin functions
end
