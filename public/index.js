$(function(){
	$("#show-pass").click(function(){
		$(this).toggleClass('fa-eye fa-eye-slash');
		$input = $(this).prev('input');

		if ($(this).hasClass('fa-eye-slash')) {
			$input.attr('type', 'text');
			$(this).attr('title', 'Hide Password');
		}else{
			$input.attr('type', 'password');
			$(this).attr('title', 'Show Password');
		}
	});
});