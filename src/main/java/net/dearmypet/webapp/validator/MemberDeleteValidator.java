
package net.dearmypet.webapp.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import net.dearmypet.webapp.vo.LoginVO;

public class MemberDeleteValidator implements Validator{

	//@Override
	public boolean supports(Class<?> clazz) {
		return LoginVO.class.isAssignableFrom(clazz);
	}

	//@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pwd", "required");
	}
}
