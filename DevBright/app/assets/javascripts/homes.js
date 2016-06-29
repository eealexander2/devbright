$(document).ready(function(){

	$('.creator').on('click', function(event){
		event.preventDefault(); 
		var request = $.ajax({
			method: "GET", 
			url: '/homes/:id/leads'
		}); 
		request.done(function(response){
			$('.creator').append(response);  
		})



	})

	//you could do event.preventDefault(); and then send over a partial. let's not use a partial 


})