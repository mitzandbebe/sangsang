package com.gr.ssgb.blackList.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.blackList.model.BlackListService;
import com.gr.ssgb.blackList.model.BlackListVO;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;
import com.gr.ssgb.memberInquiry.model.ClassUserVO;

@Controller
@RequestMapping("/blackList")
public class BlackListController {
	private static final Logger logger = LoggerFactory.getLogger(BlackListController.class);
	private final BlackListService blackListService;

	@Autowired
	public BlackListController(BlackListService blackListService) {
		this.blackListService = blackListService;

	}

	@GetMapping("/blackList")
	public String blackList(@ModelAttribute BlackListVO blackListvo, Model model) {
		logger.info("블랙리스트 리스트 화면 등장");

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(5);
		pagingInfo.setRecordCountPerPage(blackListvo.getCurrentPage());

		blackListvo.setRecordCountPerPage(5);
		blackListvo.setFirstRecordIndex(pagingInfo.getLastRecordIndex());
		logger.info("searchVO={}", blackListvo);

		List<BlackListVO> list = blackListService.selectBlackListAll(1);
		logger.info("블랙리스트 총 list.size={}", list.size());

		int totalRecord = blackListService.selectTotalRecord(blackListvo);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);

		return "blackList/blackList";
	}

	@RequestMapping("/blackListInsert")
	public String blackListInsert(@RequestParam(defaultValue = "0") int mNo, @RequestParam String hId, Model model) {
		logger.info("mNo={},hId={}", mNo, hId);

		BlackListVO vo = new BlackListVO();
		vo.setmNo(mNo);
		int cnt = blackListService.insertBlackList(vo, hId);
		String msg = "블랙리스트 등록에 실패했습니다", url = "/memberInquiry/classUser";
		if (cnt > 0) {
			msg = "블랙리스트에 등록됐습니다.";
			url = "/memberInquiry/classUser";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@RequestMapping("/blackDelete")
	public String blackDelete(@RequestParam(defaultValue = "0") int bno, Model model) {
		logger.info("블랙리스트 제외 bno={}", bno);

		int cnt = blackListService.deleteBlackList(bno);
		String msg = "블랙리스트 제외처리에 실패했습니다", url = "/blackList/blackList";
		if (cnt > 0) {
			msg = "블랙리스트 제외처리 성공";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}
}