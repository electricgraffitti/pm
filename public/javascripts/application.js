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
      $('#issue_select select.custom_select').each(function() {
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
  }
};

var ajax = {
  
  indexSelectTrigger: function() {
    var selector = $("#issue_id");
    var banner_content = $("#banner");
    var color_boxes = $("#article_boxes");
    
    selector.change(function() {

      if(selector.val() === "") {
        return
      } else {
        // Grab the Issue ID for ajax.load()
        var data = $(this).val();
        
        // Fade out the existing content
        banner_content.children().fadeOut();
        color_boxes.children().fadeOut();
        
        // Load new content 
        banner_content.load('/index-banner', {id: data}, function() {
          addthis.toolbox(".addthis_toolbox");
        }).hide().fadeIn();
        color_boxes.load('/index-color-boxes', {id: data} ).hide().fadeIn();
      }
    });
  }
  
};

var app = {
  
  shareLinks: function() {
    var script = "http://s7.addthis.com/js/250/addthis_widget.js?username=hcinsight&domready=1",
        addthis_config = {"data_track_clickback":true};
    if (window.addthis){
        window.addthis = null;
    }
    $.getScript(script);
  },

	setTips: function() {
	  $('.visible_field').tipTip({
	    defaultPosition: 'top'
	  });
	},
	
	formValidation: function() {
	  $('#pf')
	    .bind('formIsValid', function(event, form) {
        //do whatever when the form is valid
        //form - the form that is valid (jQuery Object)
        app.launchFormThankYouModal();
      })
      .ketchup();
	},
	
	loadCoreFunctions: function() {
    app.setTips();
		app.formValidation();
	},
  
};

//**********Initialize Document**********//
$(document).ready(function() {

	// injects flash div into dom
	flash.injectFlashBox();
	flash.setFlash();
});