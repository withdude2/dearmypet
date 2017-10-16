/* Write here your custom javascript codes */
$( ".navbar-toggle" ).click(function() {
	  if ( $( ".nav-hidden" ).is( ":hidden" ) ) {
	    $( ".nav-hidden" ).slideDown();
	  } else {
	    $( ".nav-hidden" ).slideUp();
	  }
});
/* 로그인 버튼 로그아웃 버튼 처리 */
$( "#modal-login-button" ).click(function() {
	$('#nav-login-button').hide();
	$('#nav-logout-button').show();
});
$( "#nav-logout-button" ).click(function() {
	$('#nav-logout-button').hide();
	$('#nav-login-button').show();
});