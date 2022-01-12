package com.gr.ssgb.bottom.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.gr.ssgb.memberInquiry.controller.memberInquiryController;

@Controller
public class BottomController {
	private static final Logger logger = LoggerFactory.getLogger(memberInquiryController.class);
	
	//1.FAQ
	@GetMapping("/bottomview/faq")
	public void faq() {
		logger.info("faq 등장?!");
	}
	
	//2.AboutUS
	@GetMapping
	public void aboutUs() {
		logger.info("aboutUs 등장?!");
	}
	
	//3.CustomerService
	@GetMapping
	public void customerService() {
		logger.info("customerService 등장?!");
	}
	
	//4.이용약관
	
	//5.개인정보처리방침
}
