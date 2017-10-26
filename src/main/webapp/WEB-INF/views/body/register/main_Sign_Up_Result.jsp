<%@page import="net.dearmypet.webapp.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
LoginVO log = (LoginVO)request.getAttribute("memberVO");
String nic = log.getLg_nickname();
System.out.println("nic => "+nic);
%>

<div class="body-benner text-block-type1">
	<div class="text-center">
		<h2><%=nic %>님 회원가입을 축하드립니다!</h2>
	</div>
</div>

<div class="body-text text-block-type1">

<a href="/main.dmp" class="btn-u btn-brd btn-brd-hover roundeed btn-u-sea btn-u-lg">반려동물 등록하기</a>
<a href="/animal_Sign_Up.dmp" class="btn-u btn-brd btn-brd-hover roundeed btn-u-green btn-u-lg">메인으로 돌아가기</a>

</div>
