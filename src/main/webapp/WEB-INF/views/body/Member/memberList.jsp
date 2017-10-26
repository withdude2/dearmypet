<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="body-benner text-block-type1">
	<div class="text-center">
		<h2>회원목록</h2>
	</div>
</div>

<div class="body-text text-block-type1">
<c:choose>
	<c:when test="${fn:length(requestScope.list)==0 }">
		등록된 회원이 없습니다.
	</c:when>
	<c:otherwise>
		<table class="table table-bordered">
			<tr>
				<th>회원 no</th>
				<th>회원 ID</th>
				<th>회원 profile</th>
				<th>이메일주소</th>
				<th>nickname</th>
				<th>일반회원 넘버</th>
				<th>로그인 방식</th>
				<th>비밀번호 입력</th>
				<th>수정 | 삭제</th>
			</tr>
			<c:forEach items="${requestScope.list }" var="Member">
			<tr>
				<td>${Member.lg_no}</td>
				<td>${Member.lg_id}</td>
				<td>${Member.lg_profile}</td>
				<td>${Member.lg_email}</td>
				<td>${Member.lg_nickname}</td>
				<td>${Member.m_no}</td>
				<td>${Member.lg_login_type}</td>
				<th><input type="password" id="defaultMemberChangeInput"/></th>
				<th>
					<form action="/defaultMemberChange.dmp" id="memberChange" class="sky-form" method="post" style="border:none; display:inline-block;">
						<input type="hidden" value="${Member.lg_no}">
						<input type="hidden" id="CuserPwd" value="${Member.lg_password}">
						<input type="hidden" id ="changePwd" value="">
						<button type="submit">수정</button>
					</form>
					|
					<form action="/defaultMemberDelete.dmp" id="memberDelete" class="sky-form" method="post" style="border:none; display:inline-block;">
						<input type="hidden" value="${Member.lg_no}">
						<input type="hidden" id="DuserPwd" value="${Member.lg_password}">
						<input type="hidden" id ="deletePwd" value="">
						<button type="submit" >삭제</button>
					</form>
				</th>
			<tr>
			</c:forEach>
		</table>
	</c:otherwise>
</c:choose>
</div>
<script>
var count = 0;
	$('this').click(function(){
		seq = $('#defaultMemberChangeInput').val();
		pwd1 = $('userPwd1').val();
		pwd2 = $('userPwd2').val();
		
		if(seq != pwd1 || seq != pwd2){
			count = count+1;
			if(count>=5){
				alert("비밀번호가 5번 틀렸습니다.");
				location.replace('/main.dmp');
			}else{
				alert("비밀번호가 틀렸습니다. "+count+"회");
			}
			return false;
		}
		
		$("#changePwd").attr("value", seq)
	});
</script>

