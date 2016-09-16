$(function(){
	$('.show-pass').on('click', function(){
		$(this).toggleClass('fa-eye fa-eye-slash');
		$input = $(this).parent('span').prev('input');

		if ($(this).hasClass('fa-eye-slash')) {
			$input.attr('type', 'text');
			$(this).attr('title', 'Hide Password');
		}else{
			$input.attr('type', 'password');
			$(this).attr('title', 'Show Password');
		}
	});

	$('input[type=password]').on('keyup', function(){
		if ($(this).val() != '') {
			$(this).next('span').show();
		} else {
			$(this).next('span').hide();
		}
	});

	$('#post-content').on('focus', function(){
		$(this).removeClass('content-no-focus').addClass('content-focus');
	})
	.on('keyup', function(){
		if ($(this).val() != '') {
			$('#post-button').prop('disabled', false).removeClass('disabled');
			$(this).addClass('content-typing');
		} else {
			$('#post-button').prop('disabled', true).addClass('disabled');
			$(this).removeClass('content-typing');
		}
	})
	.parent('.post-box').on('focusout', function(){
		$(this).find('#post-content').removeClass('content-focus').addClass('content-no-focus');
	});
	
});