package com.gr.ssgb.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class UserLoginInterceptor extends HandlerInterceptorAdapter{

	private static final Logger logger
	=LoggerFactory.getLogger(UserLoginInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		String mId = (String)session.getAttribute("mId");
		
		
		if(mId==null || mId.isEmpty()) {
			
			request.setAttribute("msg", "먼저 로그인하세요!!!!!");
			request.setAttribute("url", "/login/login");
			
			RequestDispatcher dispatcher
			=request.getRequestDispatcher("/WEB-INF/views/common/message.jsp");
			dispatcher.forward(request, response);
			
			return false;

		}else {
			return true;
		}
	}
}
