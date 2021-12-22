package com.gr.ssgb.mainevent.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.mainevent.model.MainEventService;

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
	
	
	
}
