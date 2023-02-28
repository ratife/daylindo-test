package com.daylindo.utils;

import com.daylindo.model.Competence;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class CompValidator implements Validator {

    //which objects can be validated by this validator
    @Override
    public boolean supports(Class<?> paramClass) {
        return Competence.class.equals(paramClass);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors,"name","field.required");

        Competence emp = (Competence) obj;
        if(emp.getName().length()>200 || emp.getName().length()<2){
            ValidationUtils.rejectIfEmpty(errors,"name","field.required");
        }

    }
}
