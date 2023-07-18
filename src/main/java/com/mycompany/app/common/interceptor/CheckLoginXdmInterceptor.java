package com.mycompany.app.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginXdmInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		if (request.getSession().getAttribute("sessionId") != null) {
			// by pass
		} else {
			response.sendRedirect("/usrMain");
            return false;
		}
		
		return super.preHandle(request, response, handler);
	}
	
	
}
