$(function() {
	var ws = new WebSocket('ws://localhost:60000');
	ws.binaryType ='blob';
	ws.onopen = function(event) {
				
	};
				
	ws.onmessage = function(event) {
		$('.warpper').append('<p>' + event.data + '</p>');
	};
				
	$(window).on("beforeunload",function(e) {
	  ws.close(4500);
	});

	$('.send').click(function(event) {
		var text = $('.message').val();
		ws.send(text);
	});

});
