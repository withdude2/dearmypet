<%@page import="net.dearmypet.webapp.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

-${memberVO.lg_nickname}-
<%
//Register.jsp->RegisterProc.jsp
request.setCharacterEncoding("utf-8");
/*
MemberDTO mem=new MemberDTO();
mem.setMem_id(request.getParameter("mem_id"));
... 
*/
%>

<div class="body-benner text-block-type1">
	<div class="text-center">
		<h2>동물정보 입력 폼</h2>
	</div>
</div>

<div class="body-text text-block-type1">
	<!-- Reg-Form 기본화면 -->
	<form action="/memberRegister.dmp" id="memberReg" class="sky-form" method="post">
		<header>
		</header>
		<fieldset>
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="lg_id" id="lg_id" placeholder="아이디 입력">
					<b class="tooltip tooltip-bottom-right">당신이 사용할 ID를 입력해주세요</b>
				</label>
			</section>

			<section>
				<label class="input"> <i class="icon-append fa fa-lock"></i>
					<input type="password" name="lg_password" id="lg_password" placeholder="비밀번호 입력" id="password">
					<b class="tooltip tooltip-bottom-right">비밀번호를 잊어버리지 마세요</b>
				</label>
			</section>

			<section>
				<label class="input"> <i class="icon-append fa fa-lock"></i>
					<input type="password" name="lg_passwordConfirm" id="lg_passwordConfirm" placeholder="비밀번호 재입력">
					<b class="tooltip tooltip-bottom-right">다시한번 비밀번호를 입력해주세요</b>
				</label>
			</section>
<!-- 현재 페이지가 초기화면인지 아닌지에 따라 다르게 출력 -->
<c:set var="nRetnumber" value="${ok}" />
<c:choose>
	<c:when test="${nRetnumber ne -2}">
			<section>
				<label class="input"> <i class="icon-append fa fa-lock"></i>
					<input type="email" name="lg_email" id="lg_email" placeholder="이메일 입력">
					<b class="tooltip tooltip-bottom-right">이메일 주소를 남겨주세요</b>
				</label>
			</section>

			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="lg_nickname" id="lg_nickname" placeholder="닉네임 입력">
					<b class="tooltip tooltip-bottom-right">사이트에서 사용하실 닉네임을
						입력해주세요</b>
				</label>
			</section>
	</c:when>

	<c:otherwise>
			<section>
				<label class="input"> <i class="icon-append fa fa-lock"></i>
					<input type="email" name="lg_email" id="lg_email" placeholder="이메일 입력" value="${memberVO.lg_email }">
					<b class="tooltip tooltip-bottom-right">이메일 주소를 남겨주세요</b>
				</label>
			</section>

			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="lg_nickname" id="lg_nickname" placeholder="닉네임 입력" value="${memberVO.lg_nickname}">
					<b class="tooltip tooltip-bottom-right">사이트에서 사용하실 닉네임을
						입력해주세요</b>
				</label>
			</section>
	</c:otherwise>
</c:choose>


		</fieldset>
		<footer>
			<button type="submit" class="btn-u">회원가입</button>
		</footer>
	</form>
	<!-- End Reg-Form -->
</div>

