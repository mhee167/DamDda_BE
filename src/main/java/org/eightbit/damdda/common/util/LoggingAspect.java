package org.eightbit.damdda.common.util;

import lombok.extern.log4j.Log4j2;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

/**
 * LoggingAspect는 모든 controller 및 service 패키지 내의 메서드 호출 전후에 로깅을 수행하고,
 * 메서드 실행 시간을 측정하며 예외 발생 시 이를 로깅하는 AOP 클래스입니다.
 */
@Aspect
@Component
@Log4j2
public class LoggingAspect {

    /**
     * 모든 controller 및 service 패키지 내의 메서드 호출 전후에 로깅 및 예외 처리를 수행하는 AOP 메서드.
     * 메서드 호출 시 실행 시간을 측정하고, 예외가 발생하면 이를 로깅합니다.
     *
     * @param joinPoint AOP가 적용된 메서드의 정보를 제공하는 객체.
     * @return 메서드의 실행 결과.
     * @throws Throwable AOP가 적용된 메서드가 던질 수 있는 예외.
     */
    @Around("execution(* org.eightbit.damdda..controller..*(..)) || execution(* org.eightbit.damdda..service..*(..))")
    public Object logAndHandleException(ProceedingJoinPoint joinPoint) throws Throwable {
        long startTime = System.currentTimeMillis(); // 메서드 시작 시간 측정.
        try {
            // 메서드 호출 전 로그 기록.
            log.info("Method {} called with arguments: {}", joinPoint.getSignature(), joinPoint.getArgs());

            // 실제 메서드 실행.
            Object result = joinPoint.proceed();

            // 메서드 종료 후 실행 시간 계산 및 로그 기록.
            long endTime = System.currentTimeMillis();
            log.info("Method {} executed successfully in {} ms", joinPoint.getSignature(), (endTime - startTime));

            return result; // 실행 결과 반환.
        } catch (Exception e) {
            // 예외가 발생한 경우 예외 로그 기록.
            log.error("Exception in method {}: {}", joinPoint.getSignature(), e.getMessage(), e);
            throw e; // 예외를 다시 던져 상위에서 처리 가능하도록 함.
        }
    }
}
