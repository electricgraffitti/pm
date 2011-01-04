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

var form = {
  
  customSelect: function() {
    if (!$.browser.opera) {
        $('#issue_select select.custom_select').each(function(){
            var title = $(this).attr('title');
            if( $('option:selected', this).val() != ''  ) title = $('option:selected',this).text();
            $(this)
              .css({'z-index':10,'opacity':0,'-khtml-appearance':'none'})
              .after('<span class="select">' + title + '</span>')
              .change(function() {
                val = $('option:selected',this).text();
                $(this).next().text(val);
              });
        });

    };
    
  },
  
};

var app = {
  
};

//**********Initialize Document**********//
$(document).ready(function() {

	// injects flash div into dom
	flash.injectFlashBox();
	flash.setFlash();
});