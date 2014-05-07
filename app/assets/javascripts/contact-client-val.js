$('document').ready(function(){
	/* Client side validation of my contact form. */
	
	// validate and submit on enter press for non message fields
	$('#contact_form_name, #contact_form_email').keypress(function(event) {
    var keycode = (event.keyCode ? event.keyCode : event.which);
    if(keycode == '13') {
        handleValidation(event);
    }
	});
	//validate on submit click button click
	$('#contact-button').on('click', function(event){
		handleValidation(event);
	});

	// validate message and email fields on keypress
	// only validate if user already knows it had errors
	$('#contact_form_message').keypress(function(event){
		if ($(this).hasClass('field_with_errors')){ 
			validateMessage();
		}
	});
	$('#contact_form_email').keypress(function(event){
		if ($(this).hasClass('field_with_errors')){ 
			validateEmail();
		}
	});

	// validate when input el loses focus
	$('#contact_form_email').on('focusout', function(event){
		validateEmail();
	});
	$('#contact_form_message').on('focusout', function(event){
		validateMessage();
	});

	
	// checks if both email and message are valid, submits if so
	function handleValidation(event){
		event.preventDefault();		
		if(validateEmail() && validateMessage()){			
			$('#new_contact_form').submit();
		}
	}

	// checks if the email is valid, using a reg exp
	function validateEmail(){
		var value = $('#contact_form_email').val();		
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var valid = re.test(value);		
		if(valid === true){			
			$('#contact_form_email').removeClass('field_with_errors');
		} else {			
			invalidEmail();
		}
		return valid;
	}

	// add errors class for css if email is invalid
	function invalidEmail(){		
		$('#contact_form_email').addClass('field_with_errors');
	}

	// checks if the message in valid, ie has at least 1 non space character
	function validateMessage(){		
		var message = $('#contact_form_message').val();
		var mArr = message.split("");		
		var hasNonSpace = mArr.some(function(chr){
			return chr != " ";
		});		
		if(message.length > 0 && hasNonSpace){
			$('#contact_form_message').removeClass('field_with_errors');			
			return true;
		} else {
			$('#contact_form_message').addClass('field_with_errors');			
			return false;
		}
	}
});