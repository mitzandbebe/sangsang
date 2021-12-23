package com.gr.ssgb.notice.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.notice.model.NoticeService;
import com.gr.ssgb.notice.model.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	private final NoticeService noticeService;

	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@GetMapping("/noticeList")
	public void notice() {
		logger.info("공지화면 등장");
	}
	
	@GetMapping("/noticeWrite")
	public void noticeWrite() {
		logger.info("공지작성 화면 등장");
	}
	
	@PostMapping("/noticeWrite")
	public String noticeWrite(@ModelAttribute NoticeVO vo, Model model) {
		logger.info("공지작성 파라미터 vo={}",vo);
		
		int cnt= noticeService.insertNotice(vo);
		logger.info("공지작성 성공여부 cnt={}",cnt);
		String msg="공지작성에 실패했습니다", url="/notice/noticeList";
		if(cnt>0) {
			msg="공지작성에 성공했습니다";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
}
