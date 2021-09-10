package com.cesco.clc.config.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class ExceptionResolver implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object obj, Exception exception) {
        ModelAndView view = new ModelAndView();        
        view.setViewName("error");
        view.addObject("exception", exception.getClass().getName());
        view.addObject("exceptionMessage", exception.getMessage());
        view.addObject("exceptionTrace", printStackTraceToString(exception));
        
//        if(exception instanceof TransientDataAccessResourceException) {
//            view.setViewName("errors/500");
//        }
        
        return view;
    }

    /**
     * e.printStackTrace(); 실행결과를 System.out 객체가 아닌 String 객체에 저장하여 반환  
     * @param e 예외클래스 객체
     * @return
     */
    public static String printStackTraceToString(Throwable e) {  
    	StringBuffer sb = new StringBuffer();

    	try {
    		sb.append(e.toString());
    		sb.append("\n");
    		StackTraceElement element[] = e.getStackTrace();
    		for (int idx=0; idx<element.length; idx++) {
				sb.append("\tat ");
				sb.append(element[idx].toString());
				sb.append("\n");
    		}
		} catch (Exception ex) {
			return e.toString();
		}
		
		return sb.toString();
    }  

}
