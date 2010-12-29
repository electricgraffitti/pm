var flash = {

	injectFlashBox: function() {
		$('#flash').addClass("flash_wrap");
		$("#flash").hide();
	},

	setFlash: function() {
		var flash_message = $("#flash").html();
		var msg = $.trim(flash_message);
		if (msg !== "") {
			flash.activateNotice(flash_message);
		}
	},

	activateNotice: function(flash_message) {
		var $flash_div = $("#flash");
		$flash_div.html(flash_message);
		$flash_div.show("slide", {
			direction: 'up'
		});
		// Set the fadeout
		setTimeout(function() {
			$flash_div.hide("slide", {
				direction: 'up'
			},
			function() {
				$flash_div.html("");
				$flash_div.hide();
			});
		},
		2500);
	}

};

var app = {
  
};

//**********Initialize Document**********//
$(document).ready(function() {

	// injects flash div into dom
	flash.injectFlashBox();
	flash.setFlash();
});