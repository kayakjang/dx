// remap jQuery to $
(function($){})(window.jQuery);




/* trigger when page is ready */
$(document).ready(function (){

//////////////////////////////////////////////


	$(function() {
		$( "#tabs" ).tabs({ fx: { opacity: 'toggle',duration: 'fast' } });			
	});
	

// Lost ID menu
	$(".lost-id-list h3").click(function(){
		$(this).toggleClass("active").next().slideToggle("slow");
		return false; 
	});
	
	
	
//	$(function()
//{
	//$('.chart').jScrollPane();
//});

	
	// Lost ID overlay
	
	$('#show-lost-form').click(function(e) {
    $('#lost-form').lightbox_me({
        centered: true, 
        onLoad: function() { 
            $('#lost-form form').find('input:first').focus()
            }
        });
    e.preventDefault();
    
});
	
	$("form#resend-id").validate({
		rules: {
			lostidemail: {
				required: true,
				email: true
			}
		},
		messages: {
			lostidemail: {
				required: "Please enter a valid email address"
			}
		}
	
	});



//////////////////////////////////////////////	
	
});





/*
$(".lost-id-list h3").click(function(){
	  $("#panel").slideToggle("slow");
	  $(this).toggleClass("active");
	});

*/


/* optional triggers

$(window).load(function() {
	
});

$(window).resize(function() {
	
});

*/