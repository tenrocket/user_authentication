$(function() {
	
	var confirm = $('#user_email').val(); 
	var confirm_pass = $('#user_password').val();

	$("#register").on("click", function () {
		if (!confirm.length) {
			alert('Email field is missing');
		}
		else if 
			(!confirm_pass.length) {
				alert('Password field is missing');
			}
		else
			alert(nil)
	}

);
});

$(function() {

$('#register').on('mouseenter', function(){

    $(this)
    .toggleClass('normal')
    .toggleClass('expand');

});
});

// $(function() {
	
// 	var confirm = $('#user_email').val(); 

// 	$("#register").on("click", function () {
// 		if (!confirm.length) {
// 			alert('Email field is missing');
// 	};

// });
// });

// working code
// $(function() {
	
// 	$("#register").on("click", function () {
// 		alert('Email field is missing')
// 	});

// });


		// 	else {
	// 		if ($('#password').length == 0) {
	// 			alert('Password field is missing')
	// }