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
public class BalancingDeleteController {
	private static final Logger logger
		=LoggerFactory.getLogger(BalancingDeleteController.class);
	
	@Autowired
	private BalancingService balancingService;
	
	@RequestMapping(value="/delete.do", method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue = "0") int no,
			Model model) {
		//1
		logger.info("글 삭제 화면, 파라미터 no={}", no);
		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/board/list.do");
			return "common/message";
		}
		
		//2
		
		//3
		
		//4
		return "board/delete";
	}
	
	@RequestMapping(value="/delete.do", method = RequestMethod.POST)
	public String delete_post(@ModelAttribute BalancingVO vo, Model model) {
		//1
		logger.info("글삭제 처리, 파라미터 vo={}", vo);
		
		//2
		String msg="글삭제 실패", url="/balancing/delete.do?no="+vo.getNo();
		if(balancingService.checkPwd(vo)) {
			int cnt=balancingService.deleteBoard(vo.getNo());
			if(cnt>0) {
				msg="글삭제되었습니다.";
				url="/board/list.do";
			}
		}else {
			msg="비밀번호가 일치하지 않습니다";
		}
		
		//3
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//4
		return "common/message";
	}
	
	
}
