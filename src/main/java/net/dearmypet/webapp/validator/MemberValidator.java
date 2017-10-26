package net.dearmypet.webapp.validator;

import org.springframework.validation.*;
import net.dearmypet.webapp.vo.LoginVO;

public class MemberValidator implements Validator {

	//1.유효성 검사를 할 클래스명을 지정해준다.
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return LoginVO.class.isAssignableFrom(clazz);
	}
	//WriteControler에서 호출한다.
	//유효성 검사(1.입력받을 대상자(DTO객체(=커맨드객체)) 2. 에러정보를 담을 객체명)
	//1.required.pwd=암호는 필수 입력입니다.
	//1.required.command.pwd -> required.pwd -> required.java.lang.String -> required 순으로 찾는다.
	public void validate(Object target, Errors errors) {//필수입력 체크
		// TODO Auto-generated method stub
		//입력하지 않았거나 공백을 체크해주는 메서드 -> 에러정보를 저장(에러객체)
		//1.에러객체명 2.적용시킬 필드명 3.적용시킬 에러코드명
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lg_password", "required");
	}
}
