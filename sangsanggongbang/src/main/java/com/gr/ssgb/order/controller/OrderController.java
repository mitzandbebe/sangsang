package com.gr.ssgb.order.controller;

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

import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.order.model.OrderService;
import com.gr.ssgb.order.model.OrderVO;

@Controller
@RequestMapping("/class")
public class OrderController {
	private static final Logger logger
		=LoggerFactory.getLogger(OrderController.class);
	
	//깃테스트 업데이트
	private final MemberService memberService;
	private final OrderService orderService;
	
	@Autowired
	public OrderController(MemberService memberService, OrderService orderService) {
		this.memberService = memberService;
		this.orderService = orderService;
	}
	
	@RequestMapping("/order")
	public String orderSheet(HttpSession session, Model model) {
		String mId=(String) session.getAttribute("mId");
		//vo.setmId(mId);
		logger.info("로그인 세션 mId={}", mId);
		
		MemberVO mVo= memberService.selectMemberById(mId);
		model.addAttribute("mVo", mVo);
		logger.info("결제페이지 회원정보 mVo={}", mVo);
		
		return "order/order";
	}
	
	/*
	@RequestMapping("/orderComplete")
	public String orderComplete(@RequestParam(defaultValue = "0") int orderNo,
			Model model) {
		logger.info("주문완료페이지, 파라미터 orderNo={}", orderNo);
		
		List<Map<String, Object>> list 
			=orderService.selectOrderDetailsView(orderNo);
		logger.info("주문완료, 상세주문 조회 결과 list.size={}", list.size());
		
		Map<String, Object> map=orderService.selectOrdersView(orderNo);
		logger.info("주문완료, 주문 조회 결과 map={}", map);
		
		model.addAttribute("list", list);
		model.addAttribute("orderMap", map);
		
		return "shop/order/orderComplete";
	}
	
	@RequestMapping("/orderList")
	public String orderList(@ModelAttribute DateSearchVO dateSearchVo,
			HttpSession session, Model model) {
		String userid=(String) session.getAttribute("userid");
		dateSearchVo.setCustomerId(userid);
		logger.info("주문내역 파라미터, dateSearchVo={}", dateSearchVo);
		
		//주문내역 메뉴를 클릭한 경우 파라미터가 안 넘어오므로, 오늘날짜로 셋팅
		String startDay=dateSearchVo.getStartDay();
		
		if(startDay==null || startDay.isEmpty()) {
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String today=sdf.format(d);
			dateSearchVo.setStartDay(today);
			dateSearchVo.setEndDay(today);			
		}
		
		logger.info("셋팅 후 주문내역 파라미터, dateSearchVo={}", dateSearchVo);
		
		//[1]
		PaginationInfo pagingInfo  = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setCurrentPage(dateSearchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		//[2]
		dateSearchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		dateSearchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		List<OrderAllVO> list=orderService.selectOrderAll(dateSearchVo);
		logger.info("주문내역 결과 list.size={}", list.size());
		logger.info("주문내역 결과 list={}", list);
				
		int totalRecord=orderService.selectTotalRecord(dateSearchVo);
		logger.info("주문내역 - totalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "shop/order/orderList";
	}

	*/
}






