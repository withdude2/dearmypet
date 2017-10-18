<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="body-text text-block-type1">
	<form action="#" id="sky-form4" class="sky-form">
		<header>추가정보 입력</header>

		<fieldset>
			<!-- 아이디 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-user"></i> <input type="text"
				name="username" placeholder="ID"> <b
				class="tooltip tooltip-bottom-right">ID를 입력해 주세요.</b>
			</label> </section>

			<!-- 이름/회사명 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-user"></i> <input type="email"
				name="email" placeholder="Name"> <b
				class="tooltip tooltip-bottom-right">이름을 입력해 주세요.</b>
			</label> </section>
			
			<!-- 전화번호 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-phone"></i> <input type="email"
				name="email" placeholder="tel"> <b
				class="tooltip tooltip-bottom-right">전화번호를 입력해 주세요</b>
			</label> </section>
			
			<!-- 주소/사업장주소 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-home"></i> <input type="email"
				name="email" placeholder="addr"> <b
				class="tooltip tooltip-bottom-right">주소를 입력해 주세요</b>
			</label> </section>
			
			
			<!-- 이메일 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-envelope"></i> <input type="email"
				name="email" placeholder="email"> <b
				class="tooltip tooltip-bottom-right">메일을 입력해 주세요</b>
			</label> </section>
			
			<!-- 생년월일/사업자번호 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-calendar-o"></i> <input type="bday"
				name="email" placeholder="bday"> <b
				class="tooltip tooltip-bottom-right">생년월일을 입력해 주세요</b>
			</label> </section>
			
			<!-- 성별 -->
			<section> <label class="input"> <i
				class="icon-append fa fa-user"></i> <input type="sex"
				name="email" placeholder="sex"> <b
				class="tooltip tooltip-bottom-right">성별을 입력해 주세요</b>
			</label> </section>
			
			<!-- 가입일시 -->
			<!-- <section> <label class="input"> <i
				class="icon-append fa fa-envelope"></i> <input type="datetme"
				name="email" placeholder="datetme"> <b
				class="tooltip tooltip-bottom-right">Needed to verify your
					account</b>
			</label> </section> -->
			
			<!-- 회원타입 -->
			<section>
				<label class="input">
					<i class="icon-append fa fa-question"></i>
					<input type="membertype" name="email" placeholder="membertype" />
					<b class="tooltip tooltip-bottom-right">어떤 동물을 좋아하시나요? 예)고양이, 강아지</b>
				</label>
			</section>
			
<!-- 			<section> <label class="input"> <i
				class="icon-append fa fa-lock"></i> <input type="password"
				name="password" placeholder="Password" id="password"> <b
				class="tooltip tooltip-bottom-right">Don't forget your password</b>
			</label> </section>

			<section> <label class="input"> <i
				class="icon-append fa fa-lock"></i> <input type="password"
				name="passwordConfirm" placeholder="Confirm password"> <b
				class="tooltip tooltip-bottom-right">Don't forget your password</b>
			</label> </section> -->
		</fieldset>

		<!-- <fieldset> -->
			<!-- <div class="row">
				<section class="col col-6"> <label class="input">
					<input type="text" name="firstname" placeholder="First name">
				</label> </section>
				<section class="col col-6"> <label class="input">
					<input type="text" name="lastname" placeholder="Last name">
				</label> </section>
			</div> -->

			<!-- <section> <label class="select">  -->
			<!-- <select -->
			<!-- 	name="gender"> 
					<option value="0" selected disabled>Gender</option>
					<option value="1">Male</option>
					<option value="2">Female</option>
					<option value="3">Other</option>
			</select> <i></i>
			</label> 
			</section>-->

			<!-- <section> <label class="checkbox"><input
				type="checkbox" name="subscription" id="subscription"><i></i>동의 하십니까?</label> <label class="checkbox"><input
				type="checkbox" name="terms" id="terms"><i></i>I agree with
				the Terms and Conditions</label> </section> -->
		<!-- </fieldset> -->
		<footer>
		<button type="submit" class="btn-u">확인</button>
		<button type="submit" class="btn-u">취소</button>
		</footer>
	</form>
</div>