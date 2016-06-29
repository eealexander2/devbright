class HomesController < ActionController::Base
	
	def index 
		@homes = Home.all
	end 
		
end
