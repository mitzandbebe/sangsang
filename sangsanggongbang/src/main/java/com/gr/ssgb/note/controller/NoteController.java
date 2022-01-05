package com.gr.ssgb.note.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.math3.geometry.spherical.oned.ArcsSet.Split;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.note.model.NoteService;
import com.gr.ssgb.note.model.NoteVO;

@Controller
@RequestMapping("/note")
public class NoteController {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	private final MemberService memberService;

	@Autowired
	public NoteController(NoteService noteService, MemberService memberService) {
		this.noteService = noteService;
		this.memberService = memberService;
	}

	@GetMapping("/noteWrite")
	public String noteWrite_get(@RequestParam String mId, Model model) {
		logger.info("쪽지 작성 페이지 등장 mId={}", mId);
		MemberVO vo = memberService.selectMemberById(mId);
		logger.info("회원 정보 vo={}", vo);

		model.addAttribute("vo", vo);

		return "note/noteWrite";
	}

	@PostMapping("/noteWrite")
	public String noteWrite_post(@ModelAttribute NoteVO vo, @RequestParam String mId, Model model) {
		logger.info("쪽지 vo={},mId={}", vo, mId);
		String receiveNickname = noteService.selectSendUser(vo.getrNickname());
		vo.setmId(mId);

		String msg = "해당하는 닉네임이 없습니다", url = "/note/noteWrite?mId=" + vo.getmId();
		if (receiveNickname == null || receiveNickname.isEmpty()) {
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/common/message";
		} else {
			logger.info("여긴");
			int cnt = noteService.sendNote(vo);
			if (cnt > 0) {
				msg = "쪽지를 성공적으로 보냈습니다";
				url = "/note/noteList?mId=" + vo.getmId();
			} else {
				msg = "쪽지를 보내는데 실패했습니다";
			}
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@RequestMapping("/noteList")
	public String noteList(@RequestParam String mId, Model model) {
		logger.info("쪽지리스트 등장 아이디 mId={}", mId);

		if (mId == null || mId.isEmpty()) {
			model.addAttribute("msg", "해당하는 아이디가 없습니다");
			model.addAttribute("url", "/index");
			return "/common/message";
		}

		List<Map<String, Object>> list = noteService.selectNoteView(mId);
		logger.info("쪽지 총 개수 list.size={}", list.size());

		model.addAttribute("list", list);
		return "note/noteList";
	}

	@RequestMapping("/noteDelete")
	public String noteDelete(@RequestParam int[] noteNo,Model model) {
		logger.info("noteNo={}", noteNo);
		int cnt1 = noteService.deleteNote(noteNo); 
		int cnt2 = noteService.deleteNoteRec(noteNo);
		String msg="쪽지 삭제 실패", url="/note/noteList";
		if(cnt1>0) {
			msg="쪽지 삭제 성공";
		}else if(cnt2==0) {
			msg="쪽지 삭제 실패";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "note/noteList";
	}
	/*
	 * @RequestMapping("/noteSave") public String noteSave(@RequestParam int[]
	 * noteNo, Model model) { logger.info("noteNo={}",noteNo); }
	 */
}
