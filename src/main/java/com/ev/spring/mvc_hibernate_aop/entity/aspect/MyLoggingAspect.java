package com.ev.spring.mvc_hibernate_aop.entity.aspect;

import javassist.bytecode.SignatureAttribute;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyLoggingAspect {
    @Around("execution(* com.ev.spring.mvc_hibernate_aop.entity.dao.*.*(..))")
    public Object aroundAllRepositoryMethodsAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
        SignatureAttribute.MethodSignature methodSignature=
                (SignatureAttribute.MethodSignature) proceedingJoinPoint.getSignature();
        String methodName= String.valueOf(methodSignature.getClass());
        System.out.println("Begin of "+methodName);

        Object result= proceedingJoinPoint.proceed();
        System.out.println("end of "+methodName);
        return  result;
    }
}
