package duytan.edu.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import duytan.edu.entity.UserEntity;
import duytan.edu.service.UserEntityManager;

@Component
public class UserValidator implements Validator {

	@Autowired
	private UserEntityManager usermanage;
	@Override
	public boolean supports(Class<?> aClass) {
		// TODO Auto-generated method stub
		return UserEntity.class.equals(aClass);
	}

	@Override
	public void validate(Object o, Errors errors) {
		 UserEntity user = (UserEntity) o;

			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
	        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
	            errors.rejectValue("username", "Size.userForm.username");
	        }
	        if (usermanage.findByname(user.getUsername()) != null) {
	            errors.rejectValue("username", "Duplicate.userForm.username");
	        }

	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
	        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
	            errors.rejectValue("password", "Size.userForm.password");
	        }
	}

}
