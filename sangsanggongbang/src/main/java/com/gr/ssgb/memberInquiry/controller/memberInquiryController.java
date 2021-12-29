package com.gr.ssgb.memberInquiry.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
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
	public String memberList(@ModelAttribute SearchVO searchVo ,Model model) {
		logger.info("일반회원정보 전체 조회");
		
		PaginationInfo mPagingInfo= new PaginationInfo(); //멤버 페이징
		mPagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		mPagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		mPagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(mPagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}",searchVo);
		
		List<MemberVO> mList = memberInquiryService.selectMemberAll(searchVo);
		logger.info("멤버 회원 총 수 mList.size={}",mList.size());
		
		int mTotalRecord = memberInquiryService.selectMemberTotalRecord(searchVo);
		mPagingInfo.setTotalRecord(mTotalRecord);
		
		model.addAttribute("mList",mList);
		model.addAttribute("mPagingInfo",mPagingInfo);
		
		return "memberInquiry/memberList";
	}
	
	@RequestMapping("/hostList")
	public String hostList(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("호스트 회원 전체조회");
		
		PaginationInfo hPagingInfo= new PaginationInfo(); //멤버 페이징
		hPagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		hPagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		hPagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(hPagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}",searchVo);
				
		List<HostVO> hList =memberInquiryService.selectHostAll(searchVo);
		logger.info("멤버 회원 총 수  hList.size={}",hList.size());
		
		int hTotalRecord = memberInquiryService.selectHostTotalRecord(searchVo);
		hPagingInfo.setTotalRecord(hTotalRecord);
		
		model.addAttribute("hList",hList);
		model.addAttribute("hPagingInfo",hPagingInfo);
		
		return "memberInquiry/hostList";
	}
}
