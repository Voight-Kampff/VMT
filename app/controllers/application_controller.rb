class ApplicationController < ActionController::Base
  protect_from_forgery

#custom devise redirect
	def after_sign_in_path_for(prs)
		"/espacepresse"
	end

end
