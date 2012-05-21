jQuery.fn.exists = function() { return this.length > 0 }

$(document).ready(function() {
	if($('#flash').exists()) {
		$('#flash').hide().slideDown(300).delay(4000).slideUp(300);
		$('#flash').click(function(e) { $('#flash').stop(); });
	}
});