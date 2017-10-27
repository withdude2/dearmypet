<%@page import="net.dearmypet.webapp.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- -${memberVO.lg_nickname}- --%>
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
	<form action="/animalRegister.dmp" id="animalR
	eg" class="sky-form" method="post">
		<header>
		</header>
		<fieldset>
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_name" id="p_name" placeholder="반려동물이름 입력">
					<b class="tooltip tooltip-bottom-right">반려동물의 이름을 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_loc" id="p_loc" placeholder="구조장소 입력">
					<b class="tooltip tooltip-bottom-right">구조장소를 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_rdate" id="p_rdate" placeholder="구조월일 입력">
					<b class="tooltip tooltip-bottom-right">구조월일을 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_age" id="p_age" placeholder="나이 입력">
					<b class="tooltip tooltip-bottom-right">나이를 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_pum" id="p_pum" placeholder="동물종류 입력">
					<b class="tooltip tooltip-bottom-right">동물종류를 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="bd_id" id="bd_id" placeholder="품종 입력">
					<b class="tooltip tooltip-bottom-right">품종을 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_sex" id="p_sex" placeholder="성별 입력">
					<b class="tooltip tooltip-bottom-right">성별을 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_char" id="p_char" placeholder="성격 입력">
					<b class="tooltip tooltip-bottom-right">성격을 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_con" id="p_con" placeholder="건강상태 입력">
					<b class="tooltip tooltip-bottom-right">건강상태를 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_neu" id="p_neu" placeholder="중성화여부 입력">
					<b class="tooltip tooltip-bottom-right">중성화 여부를 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="p_shot" id="p_shot" placeholder="예방접종 입력">
					<b class="tooltip tooltip-bottom-right">예방접종을 입력해주세요</b>
				</label>
			</section>
			
			<section>
				<label class="input"> <i class="icon-append fa fa-user"></i>
					<input type="text" name="co_no" id="co_no" placeholder="보호단체 번호를 입력해주세요">
					<b class="tooltip tooltip-bottom-right">보호단체 번호 입력</b>
				</label>
			</section>

		</fieldset>
		<footer>
			<button type="submit" class="btn-u">반려동물등록</button>
		</footer>
	</form>
	<!-- End Reg-Form -->
</div>

