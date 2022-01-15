package com.gr.ssgb.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.gr.ssgb.controller.AdminLoginInterceptor;
import com.gr.ssgb.controller.HostLoginInterceptor;
import com.gr.ssgb.controller.UserLoginInterceptor;


@Configuration
public class MvcConfiguration implements WebMvcConfigurer{

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new UserLoginInterceptor())
		.addPathPatterns("/member/memberEditChkPwd", "/member/memberEditChkPwd2","/dashboard/user/payment/*","/member/interestClass", "/class/order");
		
		
		
		 registry.addInterceptor(new HostLoginInterceptor())
		 .addPathPatterns("/host/hostEditChkPwd",
		 "/host/hostEditChkPwd2","/class/myclass","/dashboard/host/*", "/memberInquiry/classUser", "/host/hostAccount", "/class/inputclass","/class/listofClass","/class/listdelete" );
		 
		 
		
		registry.addInterceptor(new AdminLoginInterceptor())
		.excludePathPatterns("/admin/adminLogin")
		.addPathPatterns("/admin/**", "/memberInquiry/memberList","/memberInquiry/hostList",
				"/memberInquiry/banList", "/admin/balancing",
				"/notice/noticeWrite","/mainevent/eventwrite","/mail/mailSend" );
		
		
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver 
			= new CommonsMultipartResolver();
		multipartResolver.setDefaultEncoding("UTF-8"); // 파일 인코딩 설정
		multipartResolver.setMaxUploadSizePerFile(5 * 1024 * 1024); // 파일당 업로드 크기 제한 (5MB)
		return multipartResolver;
	}
	
}
