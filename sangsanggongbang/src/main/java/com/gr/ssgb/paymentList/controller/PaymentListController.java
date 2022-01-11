package com.gr.ssgb.paymentList.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.paymentList.model.PaymentListService;
import com.gr.ssgb.paymentList.model.PaymentListVO;

@Controller
@RequestMapping("/dashboard/user")
public class PaymentListController {	
	private static final Logger logger
	=LoggerFactory.getLogger(PaymentListController.class);

	private final PaymentListService paymentListService;
	private final MemberService memberService;
	private final HostClassService hostClassService;

	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public PaymentListController(PaymentListService paymentListService, MemberService memberService,
			HostClassService hostClassService) {
		super();
		this.paymentListService = paymentListService;
		this.memberService = memberService;
		this.hostClassService = hostClassService;
	}
	
	@GetMapping("/payment/myPayment")
	public String mypayment(HttpSession session, Model model) {
		logger.info("결제목록 화면");
		
		String mId = (String)session.getAttribute("mId");
		int mNo = memberService.selectMno(mId);
		
		List<Map<String, Object>> list=paymentListService.selectPaymentListAll(mNo);
		
		model.addAttribute("list", list);
		
		return "/dashboard/user/payment/myPayment";
	}
	/*@GetMapping("/payment/myPayment")
	public void mypayment() {
		logger.info("결제목록 화면");
	}*/




}
