package com.gr.ssgb.blackList.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.blackList.model.BlackListService;
import com.gr.ssgb.blackList.model.BlackListVO;
import com.gr.ssgb.common.SearchVO;

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
	public String blackList(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("블랙리스트 리스트 화면 등장");
/*		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setRecordCountPerPage(searchVo.getCurrentPage());

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getLastRecordIndex());
		logger.info("searchVO={}", searchVo);*/

		List<BlackListVO> list = blackListService.selectBlackListAll(1);
		logger.info("블랙리스트 총 list.size={}",list.size());
		model.addAttribute("list",list);
		
		return "blackList/blackList";
	}
}