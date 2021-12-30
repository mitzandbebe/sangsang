package com.gr.ssgb.balancing.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.balancing.model.BalancingService;
import com.gr.ssgb.balancing.model.BalancingVO;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;

@Controller
@RequestMapping("/dashboard/host")
public class BalancingController {	
	private static final Logger logger
	=LoggerFactory.getLogger(BalancingController.class);

	private final BalancingService balancingService;

	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public BalancingController(BalancingService balancingService) {
		this.balancingService = balancingService;
		logger.info("정산요청목록 생성자주입");
	}

	@RequestMapping("/balancing/list")
	public String bcList(@ModelAttribute SearchVO searchVo, Model model) {
		//1. 파라미터 읽어오기 - 출력
		logger.info("정산목록 목록 페이지, 파라미터 searchVo={}", searchVo);

		//[1] PaginationInfo 객체 생성 - 계산해줌
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		//[2] searchVo에 값 셋팅
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		List<BalancingVO> list=balancingService.selectBalancingAll(searchVo);
		logger.info("정산목록 조회,결과 list.size={}", list.size());

		//[3] totalRecord 구하기
		int totalRecord=balancingService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		//3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);

		//4. 뷰페이지 리턴
		return "dashboard/host/balancing/list";
	}
	
	/*
	 * @RequestMapping("/balancing") public String balancing() { return
	 * "dashboard/host/balancing/balancing"; }
	 */
	@RequestMapping("/balancing")
	public String totalprice(@ModelAttribute SearchVO searchVo, Model model) {
		
		List<BalancingVO> list=balancingService.selectBalancingAll(searchVo);
		
		model.addAttribute("list", list);
		
		return "dashboard/host/balancing/balancing";
	}




}
