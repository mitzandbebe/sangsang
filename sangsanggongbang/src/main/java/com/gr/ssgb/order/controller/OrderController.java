package com.gr.ssgb.order.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.order.model.OrderAllVO;
import com.gr.ssgb.order.model.OrderService;
import com.gr.ssgb.order.model.OrderVO;

@Controller
@RequestMapping("/class")
public class OrderController {
	private static final Logger logger
		=LoggerFactory.getLogger(OrderController.class);
	
	private final MemberService memberService;
	private final OrderService orderService;
	
	@Autowired
	public OrderController(MemberService memberService, OrderService orderService) {
		this.memberService = memberService;
		this.orderService = orderService;
	}

	@GetMapping("/orderdetail")
	public String order() {
	
		return "order/order";	
	}
	
	/*
	@GetMapping("/orderSheet")
	public String orderSheet(HttpSession session, Model model) {
		String userid=(String) session.getAttribute("userid");		
		logger.info("주문하기 화면, 파라미터 userid={}", userid);
		
		List<Map<String , Object>> list=cartService.selectCartList(userid);
		logger.info("주문하기 화면-장바구니 조회 결과, list.size={}", list.size());
		
		MemberVO vo = memberService.selectByUserid(userid);
		logger.info("주문하기 화면-회원조회 결과 vo={}", vo);
		
		model.addAttribute("cartList", list);
		model.addAttribute("TOTAL_PRICE", ConstUtil.TOTAL_PRICE);
		model.addAttribute("DELIVERY", ConstUtil.DELIVERY);
		
		model.addAttribute("memberVo", vo);
		
		return "shop/order/orderSheet";		
	}
	
	@PostMapping("/orderSheet")
	public String orderSheet_post(@ModelAttribute OrderVO vo, 
			HttpSession session) {
		String userid=(String) session.getAttribute("userid");
		vo.setCustomerId(userid);
		logger.info("주문 처리, 파라미터 vo={}", vo);
				
		//orders insert, orderDetails insert, cart delete
		int cnt=orderService.insertOrder(vo);
		logger.info("주문 처리 결과, cnt={}", cnt);
		
		return "redirect:/shop/order/orderComplete?orderNo="+vo.getOrderNo();
	}
	
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






