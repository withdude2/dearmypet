<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--header start-->
	<header class="">
		<div class="">
		-tiles-
		WEB-INF/views/layout/header.jsp
		</div>
		<div>로그인 버튼 : <fb:login-button 
  scope="public_profile,email"
  onlogin="checkLoginState();">
</fb:login-button></div>
	</header>
	<!--header end-->
	
	
	