var RegForm = function() {
	return {
		//Registration Form
		initRegForm : function() {
			// Validation
			$("#memberReg").validate({
				// Rules for form validation
				rules : {
					lg_id : {
						required : true
					},
					lg_email : {
						required : true,
						email : true
					},
					lg_password : {
						required : true,
						minlength : 3,
						maxlength : 20
					},
					lg_passwordConfirm : {
						required : true,
						minlength : 3,
						maxlength : 20,
						equalTo : '#lg_password'
					},
					lg_nickname : {
						required : true,
						minlength : 3,
						maxlength : 20
					},
					lg_logintype : {
						required : true
					}

				},

				// Messages for form validation
				messages : {
					lg_id : {
						required : 'ID를 입력해주세요'
					},
					lg_email : {
						required : '이메일 주소를 입력해주세요',
						email : '정확한 형식으로 입력해주세요'
					},
					lg_password : {
						required : '비밀번호를 입력해주세요'
					},
					lg_passwordConfirm : {
						required : '비밀번호를 다시한번 입력해주세요',
						equalTo : '비밀번호가 다릅니다 정확하게 다시 입력해주세요'
					},
					lg_nickname : {
						required : '닉네임을 입력해주세요'
					},
					lg_logintype : {
						required : ''
					}
				},

				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
			$("#animalReg").validate({
				// Rules for form validation
				rules : {
					p_name : {
						required : true
					},
					p_age : {
						required : true
					},
					p_sex : {
						required : true
					},
					p_neu : {
						required : true
					},
					p_shot : {
						required : true
					}
				},

				// Messages for form validation
				messages : {
					p_name : {
						required : '반려동물 이름을 꼭 입력해주세요'
					},
					p_age : {
						required : '반려동물의 나이를 입력해주세요'
					},
					p_sex : {
						required : '반려동물의 성별을 입력해주세요'
					},
					p_neu : {
						required : '중성화 여부를 꼭 입력해주세요'
					},
					p_shot : {
						required : '예방접종 내역을 꼭 입력해주세요'
					}
				},

				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
		}

	};
}();