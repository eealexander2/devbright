class LeadsController < ApplicationController
 skip_before_filter  :verify_authenticity_token
	
	def new 
		if request.xhr? 
			@home = Home.find(params[:id])
			render '_create_lead' , layout: false 
		else 
			redirect
		end 
	end 
		
	def create 
		@lead = Lead.create(first_name: params["lead"]["first_name"], last_name: params["lead"]["last_name"], email_address: params["lead"]["email_address"])
		@home = Home.find(params[:id])
		@lead.homes << @home
	end 	

end