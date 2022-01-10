package com.gr.ssgb.order.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.order.model.OrderService;

@Controller
@RequestMapping("/class")
public class OrderController {
	private static final Logger logger
	=LoggerFactory.getLogger(OrderController.class);

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
		try {
			String mId=(String) session.getAttribute("mId");
			//vo.setmId(mId);
			logger.info("로그인 세션 mId={}", mId);

			if(mId!=null || !mId.isEmpty()) {
				MemberVO mVo= memberService.selectMemberById(mId);
				logger.info("결제페이지 회원정보 mVo={}", mVo);
				List<Map<String, Object>> cVo=hostClassService.selectClassbyCNo(cNo);
				logger.info("결제페이지 클래스정보 cVo={}", cVo);
				//hostClassService.selectByLNo2(cVo.getlNo());

				model.addAttribute("mVo", mVo);
				model.addAttribute("cVo", cVo);
				return "order/order";
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		return "login/login";
	}

}






