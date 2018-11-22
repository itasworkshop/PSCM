package com.pscm.form.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.pscm.form.model.ResourceSchedule;
import com.pscm.form.service.ResourceScheduleService;

@Component
public class ResourceScheduleFormValidator implements Validator {
	
	@Autowired
	ResourceScheduleService resourceScheduleService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return ResourceSchedule.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		ResourceSchedule resourceSchedule = (ResourceSchedule) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "resource_type", "NotEmpty.ResourceScheduleForm.resource_type");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "resource_name", "NotEmpty.ResourceScheduleForm.resource_name");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "activity", "NotEmpty.ResourceScheduleForm.activity");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "start_time", "NotEmpty.ResourceScheduleForm.start_time");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "end_time", "NotEmpty.ResourceScheduleForm.end_time");
		
		
		if(resourceSchedule.getResource_type().equalsIgnoreCase("none")){
			errors.rejectValue("resource_type", "NotEmpty.ResourceScheduleForm.resource_type");
		}
		

	}

}