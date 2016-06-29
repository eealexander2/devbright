class LeadsController < ActionController::Base
	
	def new 
		if request.xhr? 
			render '_create_lead' , layout: false 
		else 
			render 
		end 
		#in here, we are going to show the form and send over the partial 
	end 
		
	def create 
		#create a form and then 
	end 	

end