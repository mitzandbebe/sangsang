package com.gr.ssgb.order.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	/*
	@ResponseBody
	@RequestMapping("/orderComplete")
	public int orderComplite_POST(HttpSession session, @RequestBody String orderId) {
		String mId=(String) session.getAttribute("mId");
		logger.info("로그인 세션 mId={}", mId);
		logger.info("orderId={}", orderId);*/
	
	@ResponseBody
	@RequestMapping("/order")
	public String orderComplite(HttpSession session, @RequestBody Map<String, Object> map, Model model) {
		String mId=(String) session.getAttribute("mId");
		logger.info("로그인 세션 mId={}", mId);
		
		logger.info("ajax POST파라미터 map={}", map );
		
		OrderVO oVo = new OrderVO();
		
		String impUid = (String) map.get("impUid");
		String merchantUid = (String) map.get("merchantUid");
		String mId2 = (String) map.get("mId");
		Integer price = (Integer)map.get("price");
		String refund = (String) map.get("refund");
		String EA =(String) map.get("ea");
		String FTIME = (String)map.get("fTime");
		String CNO = (String)map.get("cNo");
		
		int ea = Integer.parseInt(EA);
		int fTime = Integer.parseInt(FTIME);
		int cNo = Integer.parseInt(CNO);
		
		logger.info("impUid ={}", impUid);
		logger.info("merchantUid ={}", merchantUid);
		logger.info("mId2 ={}", mId2);
		logger.info("price ={}", price);
		logger.info("refund ={}", refund);
		logger.info("ea ={}", ea);
		logger.info("fTime ={}", fTime);
		logger.info("cNo ={}", cNo);
		
		oVo.setImpUid(impUid); //아임포트 상점번호
		oVo.setMerchantUid(merchantUid); //영수증번호
		oVo.setmId(mId2); //맴버아이디
		oVo.setPrice(price); //결제금액
		oVo.setRefund(refund); //결제상태
		oVo.setEa(ea); //결제수량
		oVo.setfTime(fTime); //확정시간
		oVo.setcNo(cNo); //클래스넘버
		logger.info("oVo 세팅 후!! ={}", oVo);
		
		int cnt = orderService.insertOrder(oVo);
		logger.info("주문 insert 결과, cnt={}", cnt);
		
		return "redirect:/shop/order/orderComplete?merchantUid="+oVo.getMerchantUid();
	}
	
	@RequestMapping("/orderComplete")
	public String orderComplite_POST(@RequestParam String merchantUid, Model model) {
		OrderVO vo=orderService.selectOrders(merchantUid);
		
		model.addAttribute("vo", vo);
		
		return "order/orderComplete";
		
	}
	
}






