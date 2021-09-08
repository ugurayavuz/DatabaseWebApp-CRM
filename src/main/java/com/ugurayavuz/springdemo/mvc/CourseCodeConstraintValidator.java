package com.ugurayavuz.springdemo.mvc;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    private String[] coursePrefixes;

    @Override
    public void initialize(CourseCode theCourseCode){
        coursePrefixes  = theCourseCode.value();
    }

    @Override
    public boolean isValid(String theCode, ConstraintValidatorContext theConstraintValidatorContext) {
        boolean result = false;

        if(theCode!=null){
            //loop through course prefixes check to see if code matches any of the course pref.
            for (String tempPrefix: coursePrefixes){
                result = theCode.startsWith(tempPrefix);
                // if we found a match then break out of the loop
                if(result){
                    break;
                }
            }
        }
        else{
            result=true;
        }
        return result;
    }
}
