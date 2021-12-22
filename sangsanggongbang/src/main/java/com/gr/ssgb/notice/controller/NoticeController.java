package com.gr.ssgb.notice.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.notice.model.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	private final NoticeService noticeService;

	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
		logger.info(null);
	}
	
	@RequestMapping(value="/notice")
	public String notice() {
		return "/notice/notice";
	}
	
	/*
	 * @GetMapping("/notice") public String write_get() { logger.info("공지사항 등록"); }
	 */
	
}
