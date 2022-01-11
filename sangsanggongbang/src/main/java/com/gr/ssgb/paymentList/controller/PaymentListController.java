package com.gr.ssgb.paymentList.controller;

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
import com.gr.ssgb.common.PaymentSearchVO;
import com.gr.ssgb.hostclass.model.HostClassService;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.PaymentVO;
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
	
	
	
	@RequestMapping("/payment/myPayment")
	public String mypayment(@ModelAttribute PaymentSearchVO paySearchVo, HttpSession session, Model model) {
		logger.info("결제목록 화면");
		
		String mId = (String)session.getAttribute("mId");
		int mNo = memberService.selectMno(mId);
		
		paySearchVo.setmNo(mNo);
		
		PaginationInfo pagingInfo  = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setCurrentPage(paySearchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		paySearchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		paySearchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		List<Map<String, Object>> list=paymentListService.selectPaymentListAll(paySearchVo);
		
		int totalPayment = paymentListService.selectTotalPayment(mNo);
		pagingInfo.setTotalRecord(totalPayment);
		Date now = new Date();
		int date = now.getDate();
		date = date-2;
		now = new Date(now.getYear(), now.getMonth(), date);
		
		String te = now.toLocaleString();
		logger.info("te={}",te);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("now", now);
		
		return "/dashboard/user/payment/myPayment";
	}
	@PostMapping("/payment/refund")
	public String refund(@RequestParam String paylistNo, HttpSession session, Model model) {
		logger.info("환불 화면");
		
		String mId = (String)session.getAttribute("mId");
		int mNo = memberService.selectMno(mId);
		
		PaymentSearchVO paymentSearchVo = new PaymentSearchVO();
		paymentSearchVo.setmNo(mNo);
		paymentSearchVo.setPaylistNo(paylistNo);
		
		Map<String, Object> map = paymentListService.selectByNo(paymentSearchVo);
		
		model.addAttribute("map", map);
		
		return "dashboard/user/payment/refund";
	}
	
	@PostMapping("/payment/refundSubmit")
	public String refund_submit(@RequestParam String paylistNo, Model model) {
		logger.info("paylistNo={}", paylistNo);
		
		int cnt = paymentListService.deletePayment(paylistNo);
		String msg = "환불요청에 실패하였습니다.", url = "/dashboard/user/payment/myPayment";
		if(cnt>0) {
			msg="환불사유 검토 후 2~3 영업일 이내 환불될 예정입니다.";
		}
		
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
		return "common/message";
		
	}




}
