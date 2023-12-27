$(document).ready(function () {
	/* FORM CONTACT */
	$('#submitbt').click(function () {
		if (checkFormsubmit())
			document.contact.submit();
	})

});

function checkFormsubmit() {
	$('label.label_error').prev().remove();
	$('label.label_error').remove();
	email_new = $('#email_new').val();
	if (!notEmpty("fullname", $('#text_fullname').val())) {
		return false;
	}
	if (!notEmpty("email", $('#text_email').val())) {
		return false;
	}
	if (!emailValidator("email", $('#text_contact_email_check').val())) {
		return false;
	}
	if (!notEmpty("phone", $('#text_phone').val()))
		return false;

	if (!isPhone("phone", $('#text_phone_check').val()))
		return false;
	// if (!notEmpty("address", $('#text_address').val())) {
	// 	return false;
	// }
	// if (!notEmpty("country", $('#text_country').val())) {
	// 	return false;
	// }
	// if (!notEmpty("subject", $('#text_subject').val())) {
	// 	return false;
	// }
	if (!notEmpty("text", $('#text_text').val())) {
		return false;
	}
	return true;
}