<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="body-text text-block-type1">
	<!-- Tabs -->
	<div class="tab-v1">
		<!-- <ul class="nav nav-tabs">
			<li class="active"><a href="#home-1" data-toggle="tab">Success
					State</a></li>
			<li><a href="#profile-1" data-toggle="tab">Error State</a></li>
			<li><a href="#messages-1" data-toggle="tab">Disabled State</a></li>
		</ul> -->
		<div class="tab-content">
			<!-- Success Forms -->
			<div class="tab-pane fade in active" id="home-1">
				<form action="#" class="sky-form">
					<header>설문지</header>

					<fieldset>
						<!--입양사유  -->
						<section> <label class="label">입양사유</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 가족동의 -->
						<section> <label class="label">가족동의</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 반려동물 입양 경험 -->
						<section> <label class="label">반려동물 입양 경험</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 과거 입양했던 반려동물의 종류/수량 -->
						<section> <label class="label">과거 입양했던 반려동물의 종류/수량</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 입양했던 반려동물의 현재 상태 -->
						<!-- <section> <label class="label">입양했던 반려동물의 현재 상태</label> <label
							class="input state-success"> <input type="text">
						</label>
						<div class="note note-success">This is a required field.</div>
						</section> -->
						
						<!-- 반려동물 유무 -->
						<section> <label class="label">반려동물 유무</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 주거형태 -->
						<section> <label class="label">주거형태</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 부재시 반려동물의 처우 -->
						<section> <label class="label">부재시 반려동물의 처우</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
						
						<!-- 미혼의 경우 임신, 출산시 반려동물 처우 -->
						<section> <label class="label">미혼의 경우 임신, 출산시 반려동물 처우</label> <label
							class="input state-success"> <input type="text">
						</label>
						<!-- <div class="note note-success">This is a required field.</div> -->
						</section>
												
						<!-- 중성화 수술 동의 여부 -->
						<!-- <section> <label class="label">중성화 수술 동의 여부</label> <label
							class="input state-success"> <input type="text">
						</label>
						<div class="note note-success">This is a required field.</div>
						</section> -->
						
						<!-- 중성화 수술 동의 여부 선택(Yes, No) -->
						<section> <label class="label">중성화 수술 동의 여부</label> <label
							class="select state-success"> <select>
								<option value="YES">YES</option>
								<option value="NO">NO</option>
						</select><i></i>
						</label>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	
	<!-- 설문지 끝 -->
	<div>
		<button type="button" class="button state-disabled button-secondary" onclick="window.history.back();">확인</button>
		<button type="submit" disabled class="button state-disabled">취소</button>
	</div>
</div>