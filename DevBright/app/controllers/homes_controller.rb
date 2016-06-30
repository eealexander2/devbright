class HomesController < ApplicationController

	def index 		
		if request.xhr? 
			@homes = Home.where(title: params['home']['title'])
			if @homes.length > 0 
			  @homes = Home.where(title: params['home']['title'])  	
			  render '_find_home', layout: false 
			else 
				@homes = Home.all 
				@message = "Sorry, we could not find the result you were looking for. Please search again!"
	  		render '_find_home', layout: false 
	  	end
	  else 
			@homes = Home.all 
	  end 	

	end 
		
end
