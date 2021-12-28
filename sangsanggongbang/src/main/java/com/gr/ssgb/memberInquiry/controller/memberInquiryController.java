package com.gr.ssgb.memberInquiry.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.memberInquiry.model.MemberInquiryService;

@Controller
@RequestMapping("/memberInquiry")
public class memberInquiryController {
	private static final Logger logger = LoggerFactory.getLogger(memberInquiryController.class);
	private final MemberInquiryService memberInquiryService;
	@Autowired
	public memberInquiryController(MemberInquiryService memberInquiryService) {
		this.memberInquiryService = memberInquiryService;
	}	
	
	@RequestMapping("/memberList")
	public String memberList(Model model) {
		logger.info("회원정보 화면 등장");
		
		List<MemberVO> mList = memberInquiryService.selectMemberAll();
		List<HostVO> hList =memberInquiryService.selectHostAll();
		logger.info("멤버 회원 총 수 mList.size={}, hList.size={}",mList.size(),hList.size());
		
		model.addAttribute("mList",mList);
		model.addAttribute("hList",hList);
		
		return "memberInquiry/memberList";
	}
}
