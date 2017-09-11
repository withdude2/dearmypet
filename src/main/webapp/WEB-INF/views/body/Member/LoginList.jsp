<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<h3>회원목록</h3>
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
				<th>fbno</th>
				<th>kano</th>
				<th>mno</th>
				<th>logintype</th>
			</tr>
			<c:forEach items="${requestScope.list }" var="Login">
			<tr>
				<td>${Login.lg_no}</td>
				<td>${Login.lg_id}</td>
				<td>${Login.lg_profile}</td>
				<td>${Login.lg_email}</td>
				<td>${Login.lg_nickname}</td>
				<td>${Login.lgfb_no}</td>
				<td>${Login.lgka_no}</td>
				<td>${Login.m_no}</td>
				<td>${Login.lg_login_type}</td>
			<tr>
			</c:forEach>
		</table>
	</c:otherwise>
</c:choose>
