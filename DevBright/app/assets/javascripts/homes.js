$(document).ready(function(){

	$('.container').on('click', '.creator', function(event){	
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
		});
	});

	$('.container').on('submit', '.more-info', function(event){
		event.preventDefault();
		var data = $(this).serialize(); 
	  var url = $(this).attr('action'); 
	 	var request = $.ajax({
	 		method: "POST", 
	 		url: url,  
	 		data: data 
	  });
	  request.done(function(response){	  	
	  	$('.more-info').hide();
	    $('.creator').show();
	  });
	});	 

	$('.second-container').on('submit', '.search', function(event){
	 	event.preventDefault();	
		var url = $(this).attr('action')	
		var data =$(this).serialize();
	   var request = $.ajax({
	   	method: "GET",
	   	url: url, 
	   	data: data 
	 	});
	  request.done(function(response){
	 		$('.home-list').hide(); 
	 		$('.second-container').append(response); 
	 		$('.fadeOut').fadeOut(3300);
		});
	}); 
});