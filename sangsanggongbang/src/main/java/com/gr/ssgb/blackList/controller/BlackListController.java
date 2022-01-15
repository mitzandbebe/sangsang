package com.gr.ssgb.blackList.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.blackList.model.BlackListService;
import com.gr.ssgb.blackList.model.BlackListVO;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.host.model.HostService;
import com.gr.ssgb.host.model.HostVO;

@Controller
@RequestMapping("/blackList")
public class BlackListController {
	private static final Logger logger = LoggerFactory.getLogger(BlackListController.class);
	private final BlackListService blackListService;
	private final HostService hostService;
	
	@Autowired
	public BlackListController(BlackListService blackListService, HostService hostService) {
		this.blackListService = blackListService;
		this.hostService = hostService;

	}

	@RequestMapping("/blackList")
	public String blackList(@RequestParam String hId, @ModelAttribute BlackListVO blackListvo, Model model) {
		logger.info("블랙리스트 리스트 화면 등장");
		HostVO hVo =hostService.selectHostById(hId); 
		blackListvo.setHno(hVo.gethNo());
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(9);
		pagingInfo.setCurrentPage(blackListvo.getCurrentPage());

		blackListvo.setRecordCountPerPage(9);
		blackListvo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("blackListvo={}", blackListvo);

		List<Map<String, Object>> list = blackListService.selectBlackListAll(blackListvo);
		logger.info("블랙리스트 총 list.size={}", list.size());

		int totalRecord = blackListService.selectTotalRecord(blackListvo);
		logger.info("totalRecord={}", totalRecord);
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
	public String blackDelete(@RequestParam(defaultValue = "0") int bno,@RequestParam String mId ,Model model) {
		logger.info("블랙리스트 제외 bno={},mId={}", bno,mId);

		int cnt = blackListService.deleteBlackList(bno,mId);
		String msg = "블랙리스트 제외처리에 실패했습니다", url = "/memberInquiry/classUser";
		if (cnt > 0) {
			msg = "블랙리스트 제외처리 성공";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}
}