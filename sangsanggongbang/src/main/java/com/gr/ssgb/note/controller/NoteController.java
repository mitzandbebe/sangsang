package com.gr.ssgb.note.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.member.model.MemberService;
import com.gr.ssgb.member.model.MemberVO;
import com.gr.ssgb.note.model.NoteService;
import com.gr.ssgb.note.model.NoteVO;

@Controller
public class NoteController {
	private static final Logger logger = LoggerFactory.getLogger(NoteController.class);
	private final NoteService noteService;
	private final MemberService memberService;

	@Autowired
	public NoteController(NoteService noteService, MemberService memberService) {
		this.noteService = noteService;
		this.memberService = memberService;
	}

	@GetMapping("/note/noteWrite") // 쪽지 보내기 화면 출력
	public String noteWrite_get(@RequestParam String mId, Model model) {
		logger.info("쪽지 작성 페이지 등장 mId={}", mId);
		MemberVO vo = memberService.selectMemberById(mId);
		logger.info("회원 정보 vo={}", vo);

		model.addAttribute("vo", vo);

		return "note/noteWrite";
	}

	@PostMapping("/note/noteWrite") // 쪽지보내기
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
			int cnt = noteService.sendNoteM(vo);
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

	@RequestMapping("/note/noteList") // 쪽지리스트
	public String noteList(@ModelAttribute NoteVO vo, Model model) { // searchVO 상속 받은 noteVO
		logger.info("쪽지리스트 등장 아이디 mId={}", vo.getmId());

		if (vo.getmId() == null || vo.getmId().isEmpty()) {
			model.addAttribute("msg", "해당하는 아이디가 없습니다");
			model.addAttribute("url", "/index");
			return "/common/message";
		}

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(10);
		pagingInfo.setCurrentPage(vo.getCurrentPage());

		vo.setRecordCountPerPage(10);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("vo={}", vo);

		List<Map<String, Object>> list = noteService.selectNoteViewM(vo);
		logger.info("쪽지 총 개수 list.size={}", list.size());

		int totalRecord = noteService.selectTotalNoteRecordM(vo);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);
		return "note/noteList";
	}

	@RequestMapping("/note/noteBox") // 쪽지보관함 리스트
	public String noteBox(@ModelAttribute NoteVO vo, @RequestParam String mId, Model model) {
		logger.info("쪽지보관함 등장 아이디 mId={}", mId);

		if (mId == null || mId.isEmpty()) {
			model.addAttribute("msg", "해당하는 아이디가 없습니다");
			model.addAttribute("url", "/index");
			return "/common/message";
		}
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(5);
		pagingInfo.setCurrentPage(vo.getCurrentPage());

		vo.setRecordCountPerPage(5);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("vo={}", vo);

		List<Map<String, Object>> list = noteService.selectNoteBoxViewM(vo);
		logger.info("쪽지보관함 총 개수 list.size={}", list.size());

		int totalRecord = noteService.selectTotalNoteBoxRecordM(vo);
		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("list", list);
		return "note/noteBox";
	}

	@RequestMapping("/note/noteDelete") // 쪽지삭제
	public String noteDelete(@RequestParam int[] noteNo, @RequestParam String mId, Model model) {
		logger.info("noteNo={},mid={}", noteNo, mId);

		int cnt1 = noteService.deleteNote(noteNo);
		int cnt2 = noteService.deleteNoteRec(noteNo);
		String msg = "쪽지 삭제 실패", url = "/note/noteList";
		if (cnt1 > 0) {
			msg = "쪽지 삭제 성공";
		} else if (cnt2 == 0) {
			msg = "쪽지 삭제 실패";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "redirect:/note/noteList?mId=" + mId;
	}

	@PostMapping("/note/noteSave") // 쪽지 보관함 시키는것
	public String noteSave(@RequestParam int[] noteNo, @RequestParam String mId, Model model) {
		logger.info("noteNo={}", noteNo);
		int cnt = noteService.saveNote(noteNo);
		String msg = "쪽지 보관 실패", url = "/note/noteBox?mId=" + mId;
		if (cnt > 0) {
			msg = "쪽지 보관 성공";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/common/message";
	}

	@RequestMapping("/note/noteDetail") // 쪽지 상세사항
	public String noteDetail(@RequestParam(defaultValue = "0") int noteNo, Model model) {
		logger.info("쪽지디테일 noteNo={}", noteNo);

		String msg = "잘못된 url입니다", url = "/note/noteList";
		if (noteNo == 0) {
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/common/message";
		}
		NoteVO vo = noteService.selectNoteDetail(noteNo); //
		/* int cnt = noteService.noteRead(noteNo); */
		logger.info("쪽지상세화면 vo={}", vo);

		model.addAttribute("vo", vo);

		return "note/noteDetail";
	}


}
