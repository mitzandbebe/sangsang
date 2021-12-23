package com.gr.ssgb.mainevent.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.mainevent.model.MainEventService;
import com.gr.ssgb.mainevent.model.MainEventVO;

@Controller
@RequestMapping("/mainevent")
public class MainEventController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainEventController.class);
	
	private final MainEventService mainEventService;
	
	@Autowired
	public MainEventController(MainEventService mainEventService) {
		this.mainEventService = mainEventService;
		logger.info("메인이벤트 생성자 주입");
	}

	//메인이벤트 뷰
	@RequestMapping(value = "/eventmain")
	public String eventlist() {
		return "/mainevent/eventmain";
	}
	
	@GetMapping("/eventwrite")
	public String write_get() {
		logger.info("이벤트 등록");
		return "mainevent/eventwrite";
	}
	
	@PostMapping("/eventwrite")
	public String write_post(@ModelAttribute MainEventVO vo,HttpServletRequest request) {
		logger.info("이벤트 등록 처리,파라미터 vo ={}",vo);
		
		int cnt = mainEventService.insertEvent(vo);
		logger.info("등록 결과, cnt={}",cnt);
		
		return "redirect:/mainevent/eventlist";
	}
	
	@RequestMapping("/eventlist")
	public String list(Model model) {
		logger.info("이벤트 목록");
		
		List<MainEventVO> list=mainEventService.selectAll();
		
		model.addAttribute("list",list);
		
		return "/mainevent/eventlist";
	}
}
