package com.gr.ssgb.balancing.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.balancing.model.BalancingService;
import com.gr.ssgb.balancing.model.BalancingVO;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;

@Controller
@RequestMapping("/balancing")
public class BalancingController {	
	private static final Logger logger
	=LoggerFactory.getLogger(BalancingController.class);
	
	private final BalancingService balancingService;
	
	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public BalancingController(BalancingService balancingService) {
		this.balancingService = balancingService;
		logger.info("생성자주입!!");
	}

	@RequestMapping(value="/write.do", method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");
		
		return "balancing/write";
	}
	
	@RequestMapping(value="/write.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute BalancingVO balancingVo) {
		//1
		logger.info("글쓰기 처리, 파라미터 vo={}", balancingVo);
		
		//2
		int cnt=balancingService.insertBoard(balancingVo);
		logger.info("글쓰기 결과, cnt={}", cnt);
		
		//3		
		
		//4
		return "redirect:/balancing/list.do";
	}
	
	@RequestMapping("/list.do")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		//1
		logger.info("글목록, 파라미터 searchVo={}", searchVo);
				
		//2
		//searchVo에 firstRecordIndex, recordCountPerPage 값을 넣어줘야 함
		//=> PaginationInfo를 이용하여 firstRecordIndex값을 미리 구한다
		
		//[1] PaginationInfo 객체 생성 - 계산해줌
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//[2] searchVo에 값 셋팅
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);
		
		List<BalancingVO> list=balancingService.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());
		
		//[3] totalRecord 구하기
		int totalRecord=balancingService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		//3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		//4. 뷰페이지 리턴
		return "balancing/list";
	}
	
	@RequestMapping("/detail.do")
	public String detail(@RequestParam(defaultValue = "0") int no, Model model) {
		logger.info("글 상세보기 파라미터 no={}", no);
		
		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/balancing/list.do");
			
			return "common/message";
		}
		
		BalancingVO vo=balancingService.selectByNo(no);
		logger.info("상세보기 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "balancing/detail";
	}
	
	@RequestMapping("/countUpdate.do")
	public String countUpdate(@RequestParam(defaultValue = "0") int no, 
			Model model) {
		logger.info("조회수 증가 파라미터 no={}", no);
		
		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/board/list.do");
			
			return "common/message";
		}
		
		int cnt=balancingService.updateReadCount(no);
		logger.info("조회수 증가 결과 cnt={}", cnt);
		
		return "redirect:/balancing/detail.do?no="+no;		
	}
	

	
}
