package com.gr.ssgb.order.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.hostclass.model.HostClassVO;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.order.model.OrderService;

@Controller
@RequestMapping("/class")
public class OrderController {
	private static final Logger logger
		=LoggerFactory.getLogger(OrderController.class);
	
	//깃테스트 업데이트
	private final MemberService memberService;
	private final OrderService orderService;
	private final HostClassService hostClassService;
	
	@Autowired
	public OrderController(MemberService memberService, OrderService orderService, HostClassService hostClassService) {
		this.memberService = memberService;
		this.orderService = orderService;
		this.hostClassService = hostClassService;
	}
	
	/*
	@GetMapping("/order")
	public String orderSheet(HttpSession session, Model model) {
		String mId=(String) session.getAttribute("mId");
		//vo.setmId(mId);
		logger.info("로그인 세션 mId={}", mId);
		
		MemberVO mVo= memberService.selectMemberById(mId);
		model.addAttribute("mVo", mVo);
		logger.info("결제페이지 회원정보 mVo={}", mVo);
		
		return "order/order";
	}
	*/

	@PostMapping("/order")
	public String orderSheet_POST(HttpSession session, Model model, @RequestParam(defaultValue = "0") int cNo) {
		logger.info("cNo={}", cNo);
		String mId=(String) session.getAttribute("mId");
		//vo.setmId(mId);
		logger.info("로그인 세션 mId={}", mId);
		
		MemberVO mVo= memberService.selectMemberById(mId);
		logger.info("결제페이지 회원정보 mVo={}", mVo);
		
		HostClassVO cVo=hostClassService.selectClassbyCNo2(cNo);
		logger.info("결제페이지 클래스정보 cVo={}", cVo);
		
		model.addAttribute("mVo", mVo);
		model.addAttribute("cVo", cVo);
		
		return "order/order";
	}

}






