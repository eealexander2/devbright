$(document).ready(function(){

	$('.creator').on('click', function(event){	
		var id = $(this).attr('id');
		event.preventDefault();
		var $link = $(this);
		$link.hide(); 
		var url = $(this).attr('href'); 
		var request = $.ajax({
			method: "GET", 
			url: url
		}); 
	 request.done(function(response){
			$('.' + id + '').append(response); 
		})



	})

	//you could do event.preventDefault(); and then send over a partial. let's not use a partial 


})