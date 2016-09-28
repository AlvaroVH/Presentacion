class RedireccionController < ApplicationController
	before_action :authenticate_user!
	def segunda
		redirect_to(:action => 'logear')
	end
	def logear
		render('devise/registrations/new')
	end	
end
