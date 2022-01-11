package com.gr.ssgb.order.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.order.model.OrderService;
import com.gr.ssgb.order.model.OrderVO;

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

	
	@ResponseBody
	@RequestMapping("/orderComplete")
	public int orderComplite_POST(HttpSession session, @RequestBody String orderId) {
		String mId=(String) session.getAttribute("mId");
		logger.info("로그인 세션 mId={}", mId);
		logger.info("orderId={}", orderId);
		
			
		/*
		 * logger.info("orderVo={}", orderVo);

		int cnt = orderService.insertOrder(orderVo);
		logger.info("주문 처리 결과, cnt={}", cnt);
		
		List<Map<String, Object>> list 
		=orderService.selectOrderDetailsView(orderVo.getOrderNo());
		logger.info("주문완료, 상세주문 조회 결과 list.size={}", list.size());

		Map<String, Object> map=orderService.selectOrdersView(orderVo.getOrderNo());
		logger.info("주문완료, 주문 조회 결과 map={}", map);

		model.addAttribute("list", list);
		model.addAttribute("orderMap", map);	*/

		return 1;
	}

}






