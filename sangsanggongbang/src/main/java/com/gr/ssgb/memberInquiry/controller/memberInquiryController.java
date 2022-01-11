package com.gr.ssgb.memberInquiry.controller;

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
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.host.model.HostVO;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.memberInquiry.model.BanVO;
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
	public String memberList(@ModelAttribute SearchVO searchVo, HttpSession session, Model model) {
		String adId = (String) session.getAttribute("adId");
		if (adId == null || adId.isEmpty()) {
			model.addAttribute("msg", "관리자만 접근 가능한 페이지입니다.");
			model.addAttribute("url", "/index");
			return "/common/message";
		}
		logger.info("일반회원정보 전체 조회 관리자 아이디 adId={}", adId);

		PaginationInfo mPagingInfo = new PaginationInfo(); // 멤버 페이징
		mPagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		mPagingInfo.setRecordCountPerPage(10);
		mPagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(10);
		searchVo.setFirstRecordIndex(mPagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}", searchVo);

		List<MemberVO> mList = memberInquiryService.selectMemberAll(searchVo);
		logger.info("멤버 회원 총 수 mList.size={}", mList.size());

		int mTotalRecord = memberInquiryService.selectMemberTotalRecord(searchVo);
		mPagingInfo.setTotalRecord(mTotalRecord);

		model.addAttribute("mList", mList);
		model.addAttribute("mPagingInfo", mPagingInfo);

		return "memberInquiry/memberList";
	}

	@RequestMapping("/hostList")
	public String hostList(@ModelAttribute SearchVO searchVo, HttpSession session, Model model) {
		String adId = (String) session.getAttribute("adId");
		if (adId == null || adId.isEmpty()) {
			model.addAttribute("msg", "관리자만 접근 가능한 페이지입니다.");
			model.addAttribute("url", "/index");
			return "/common/message";
		}
		logger.info("호스트 회원 전체조회");

		PaginationInfo hPagingInfo = new PaginationInfo(); // 멤버 페이징
		hPagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		hPagingInfo.setRecordCountPerPage(10);
		hPagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(10);
		searchVo.setFirstRecordIndex(hPagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}", searchVo);

		List<HostVO> hList = memberInquiryService.selectHostAll(searchVo);
		logger.info("멤버 회원 총 수  hList.size={}", hList.size());

		int hTotalRecord = memberInquiryService.selectHostTotalRecord(searchVo);
		hPagingInfo.setTotalRecord(hTotalRecord);

		model.addAttribute("hList", hList);
		model.addAttribute("hPagingInfo", hPagingInfo);

		return "memberInquiry/hostList";
	}

	@RequestMapping("/banList")
	public String banList(@ModelAttribute SearchVO searchVo,HttpSession session, Model model) {
		String adId = (String) session.getAttribute("adId");
		if (adId == null || adId.isEmpty()) {
			model.addAttribute("msg", "관리자만 접근 가능한 페이지입니다.");
			model.addAttribute("url", "/index");
			return "/common/message";
		}
		logger.info("참여제한자 인원 리스트 등장");

		PaginationInfo PagingInfo = new PaginationInfo();
		PagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		PagingInfo.setRecordCountPerPage(10);
		PagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(10);
		searchVo.setFirstRecordIndex(PagingInfo.getFirstRecordIndex());
		logger.info("searchVo={}", searchVo);

		List<Map<String, Object>> bList = memberInquiryService.selectBanAll(searchVo);
		logger.info("참여제한 회원 총 수  bList.size={}", bList.size());

		int bTotalRecord = memberInquiryService.selectBanTotalRecord(searchVo);
		PagingInfo.setTotalRecord(bTotalRecord);

		model.addAttribute("bList", bList);
		model.addAttribute("PagingInfo", PagingInfo);

		return "memberInquiry/banList";
	}

	@GetMapping("/banWrite")
	public String banWrite_get(@RequestParam(defaultValue = "0") int mNo, HttpSession session, Model model) {
		String adId = (String) session.getAttribute("adId");
		if (adId == null) {
			model.addAttribute("msg", "관리자만 접근 가능한 페이지입니다.");
			model.addAttribute("url", "/index");
			return "/common/message";
		}
		logger.info("참여제한자 등록 화면 등장 및 회원번호 mNo={}", mNo);

		String msg = "", url = "";
		if (mNo == 0) {
			msg = "잘못된 url입니다";
			url = "/memberInquiry/memberList";

			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/common/message";
		}
		MemberVO vo = memberInquiryService.selectMemberByNo(mNo);
		logger.info("회원정보 vo={}", vo);

		model.addAttribute("vo", vo);

		return "memberInquiry/banWrite";
	}

	@PostMapping("/banWrite")
	public String banWrite_post(@ModelAttribute BanVO bVo, Model model) {
		logger.info("참여제한 파라미터, bVo={}", bVo);

		int cnt = memberInquiryService.insertBan(bVo);
		String msg = "참여제한 처리 실패", url = "/memberInquiry/memberList";
		if (cnt > 0) {
			msg = "참여제한 처리 성공";
			url = "/memberInquiry/banList";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/common/message";
	}

	@RequestMapping("/banDelete")
	public String banDelete(@ModelAttribute BanVO vo, Model model) {
		logger.info("참여제한해제 회원번호 vo={}", vo);
		if (vo == null) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/memberInquiry/banList");
			return "/common/message";
		}
		int cnt = memberInquiryService.deleteBan(vo);
		String msg = "참여제한해제 실패", url = "/memberInquiry/banList";
		if (cnt > 0) {
			msg = "참여제한해제 성공";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/common/message";
	}
}
