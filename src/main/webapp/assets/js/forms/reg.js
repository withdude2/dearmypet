var RegForm = function () {

    return {
        
        //Registration Form
        initRegForm: function () {
	        // Validation
	        $("#sky-form4").validate({                   
	            // Rules for form validation
	            rules:
	            {
	                username:
	                {
	                    required: true
	                },
	                email:
	                {
	                    required: true,
	                    email: true
	                },
	                password:
	                {
	                    required: true,
	                    minlength: 3,
	                    maxlength: 20
	                },
	                passwordConfirm:
	                {
	                    required: true,
	                    minlength: 3,
	                    maxlength: 20,
	                    equalTo: '#password'
	                },
	                firstname:
	                {
	                    required: true
	                },
	                lastname:
	                {
	                    required: true
	                },
	                gender:
	                {
	                    required: true
	                },
	                terms:
	                {
	                    required: true
	                }
	            },
	            
	            // Messages for form validation
	            messages:
	            {
	                login:
	                {
	                    required: 'ID를 입력해주세요'
	                },
	                email:
	                {
	                    required: '이메일 주소를 입력해주세요',
	                    email: '정확한 형식으로 입력해주세요'
	                },
	                password:
	                {
	                    required: '비밀번호를 입력해주세요'
	                },
	                passwordConfirm:
	                {
	                    required: '비밀번호를 다시한번 입력해주세요',
	                    equalTo: '비밀번호가 다릅니다 정확하게 다시 입력해주세요'
	                },
	                firstname:
	                {
	                    required: 'Please select your first name'
	                },
	                lastname:
	                {
	                    required: 'Please select your last name'
	                },
	                gender:
	                {
	                    required: 'Please select your gender'
	                },
	                terms:
	                {
	                    required: 'You must agree with Terms and Conditions'
	                }
	            },                  
	            
	            // Do not change code below
	            errorPlacement: function(error, element)
	            {
	                error.insertAfter(element.parent());
	            }
	        });
        }

    };
}();