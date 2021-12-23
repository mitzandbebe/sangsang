package com.gr.ssgb.balancing.controller;

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

@Controller

@RequestMapping("/balancing")
public class BalancingEditController {
	private static final Logger logger
		=LoggerFactory.getLogger(BalancingEditController.class);
	
	@Autowired
	private BalancingService balancingService;
	
	@RequestMapping(value="/edit.do", method=RequestMethod.GET)
	public String edit_get(@RequestParam(defaultValue = "0") int no, 
			Model model) {
		//1. 파라미터 읽어오기
		logger.info("글 수정 화면, 파라미터 no={}", no);
		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/board/list.do");
			return "common/message";
		}
		
		//2.db작업
		BalancingVO vo=balancingService.selectByNo(no);
		logger.info("글수정-상세조회 결과 vo={}", vo);
		
		//3.모델에 결과 저장
		model.addAttribute("vo", vo);
		
		//4.뷰페이지 리턴
		return "board/edit";
	}
	
	@RequestMapping(value="/edit.do", method = RequestMethod.POST)
	public String edit_post(@ModelAttribute BalancingVO vo, Model model) {
		//1
		logger.info("글수정 처리, 파라미터 vo={}", vo);
		
		//2
		String msg="글수정 실패", url="/board/edit.do?no="+vo.getNo();
		if(balancingService.checkPwd(vo)) {
			int cnt=balancingService.updateBoard(vo);
			if(cnt>0) {
				msg="글수정되었습니다.";
				url="/board/detail.do?no="+vo.getNo();
			}
		}else {
			msg="비밀번호가 일치하지 않습니다.";
		}
		
		//3
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//4
		return "common/message";
	}
	
}
