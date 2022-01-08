package com.gr.ssgb.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.note.controller.NoteController;
import com.gr.ssgb.note.model.NoteService;

@Controller
public class TopCount {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	private final MemberService memberService;
	
	public TopCount(NoteService noteService, MemberService memberService) {
		this.noteService = noteService;
		this.memberService = memberService;
	}
	
	/*
	 * @GetMapping(value = {"/index"}) // 여기다 다중 매핑으로 모든 페이지 메핑을 해주면 됩니다! public
	 * String noteNum(HttpSession session,HttpServletRequest request ,Model model) {
	 * String mId = (String) session.getAttribute("mId"); // 쪽지 확인을 위해
	 * logger.info("mId={}", mId); StringBuffer urlTem = request.getRequestURL(); //
	 * 해당 페이지의 url을 알기위해 String url = urlTem.substring(39); // 리턴을 위한 url추출
	 * logger.info("url={}",url);
	 * 
	 * int num = noteService.readNum(mId); logger.info("안읽은 쪽지 개수 num={}", num);
	 * 
	 * 
	 * model.addAttribute("noteNum", num); return url; }
	 */
}
